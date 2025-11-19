@interface VLFScanningAnimationManager
- (VLFScanningAnimationManager)initWithLayer:(id)a3;
- (VLFScanningAnimationManager)initWithLayer:(id)a3 animationDuration:(double)a4 timingFunction:(id)a5;
- (id)opacityAnimationWithToValue:(double)a3;
- (void)animationDidStop:(id)a3 finished:(BOOL)a4;
- (void)fadeWithFadeOutCompletion:(id)a3;
- (void)replaceOnGoingFadeOutCompletion:(id)a3;
@end

@implementation VLFScanningAnimationManager

- (void)animationDidStop:(id)a3 finished:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(VLFScanningAnimationManager *)self layer];
  v8 = [v7 animationForKey:@"fadeOut"];

  v9 = sub_1006CFFD8();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG);
  if (v8 == v6)
  {
    if (v10)
    {
      v14 = @"NO";
      if (v4)
      {
        v14 = @"YES";
      }

      v15 = v14;
      v20 = 138412290;
      v21 = v15;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "Fade out animation finished: %@", &v20, 0xCu);
    }

    v16 = [(VLFScanningAnimationManager *)self layer];
    [v16 removeAnimationForKey:@"fadeOut"];

    v13 = [(VLFScanningAnimationManager *)self fadeOutCompletion];
    [(VLFScanningAnimationManager *)self setFadeOutCompletion:0];
    v13[2](v13);
    if (v4)
    {
      v17 = sub_1006CFFD8();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v20) = 0;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "Starting a new fade in animation", &v20, 2u);
      }

      v18 = [(VLFScanningAnimationManager *)self layer];
      v19 = [(VLFScanningAnimationManager *)self opacityAnimationWithToValue:1.0];
      [v18 addAnimation:v19 forKey:@"fadeIn"];
    }
  }

  else
  {
    if (v10)
    {
      v11 = @"NO";
      if (v4)
      {
        v11 = @"YES";
      }

      v12 = v11;
      v20 = 138412290;
      v21 = v12;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "Fade in animation finished: %@", &v20, 0xCu);
    }

    v13 = [(VLFScanningAnimationManager *)self layer];
    [v13 removeAnimationForKey:@"fadeIn"];
  }
}

- (id)opacityAnimationWithToValue:(double)a3
{
  v5 = [CABasicAnimation animationWithKeyPath:@"opacity"];
  [v5 setDelegate:self];
  v6 = [(VLFScanningAnimationManager *)self layer];
  v7 = [v6 presentationLayer];

  v8 = [(VLFScanningAnimationManager *)self layer];
  v9 = v8;
  if (v7)
  {
    v10 = [v8 presentationLayer];
    [v10 opacity];
    v12 = v11;
  }

  else
  {
    [v8 opacity];
    v12 = v13;
  }

  v14 = v12;
  v15 = sub_1006CFFD8();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    v26 = 134218240;
    v27 = *&v14;
    v28 = 2048;
    v29 = a3;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "Creating new opacity animation from: %f, to: %f", &v26, 0x16u);
  }

  v16 = [NSNumber numberWithDouble:v14];
  [v5 setFromValue:v16];

  v17 = [NSNumber numberWithDouble:a3];
  [v5 setToValue:v17];

  v18 = +[NSUserDefaults standardUserDefaults];
  v19 = [v18 BOOLForKey:@"VLFSessionScanningAnimationSlowDownKey"];

  if (v19)
  {
    v20 = sub_1006CFFD8();
    v21 = 5.0;
    if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_12;
    }

    v26 = 134217984;
    v27 = 0x4014000000000000;
    v22 = "Using slow animation duration: %f";
  }

  else
  {
    [(VLFScanningAnimationManager *)self animationDuration];
    v21 = v23;
    v20 = sub_1006CFFD8();
    if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_12;
    }

    v26 = 134217984;
    v27 = *&v21;
    v22 = "Using normal animation duration: %f";
  }

  _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEBUG, v22, &v26, 0xCu);
LABEL_12:

  [v5 setDuration:{v21 * vabdd_f64(v14, a3)}];
  [v5 setRemovedOnCompletion:0];
  [v5 setFillMode:kCAFillModeForwards];
  v24 = [(VLFScanningAnimationManager *)self timingFunction];
  [v5 setTimingFunction:v24];

  return v5;
}

- (void)replaceOnGoingFadeOutCompletion:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(VLFScanningAnimationManager *)self layer];
    v6 = [v5 animationForKey:@"fadeOut"];

    v7 = sub_1006CFFD8();
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG);
    if (v6)
    {
      if (v8)
      {
        LOWORD(v13) = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "Replacing existing fade out completion block", &v13, 2u);
      }

      [(VLFScanningAnimationManager *)self setFadeOutCompletion:v4];
    }

    else
    {
      if (v8)
      {
        LOWORD(v13) = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "There is no on-going fade out animation; executing completion block immediately", &v13, 2u);
      }

      v4[2](v4);
    }
  }

  else
  {
    v9 = sub_10006D178();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v13 = 136315906;
      v14 = "[VLFScanningAnimationManager replaceOnGoingFadeOutCompletion:]";
      v15 = 2080;
      v16 = "VLFScanningAnimationManager.m";
      v17 = 1024;
      v18 = 88;
      v19 = 2080;
      v20 = "completion != nil";
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%s [%s:%d] Invalid parameter not satisfying: %s", &v13, 0x26u);
    }

    if (sub_100E03634())
    {
      v10 = sub_10006D178();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = +[NSThread callStackSymbols];
        v13 = 138412290;
        v14 = v11;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%@", &v13, 0xCu);
      }
    }

    v12 = sub_1006CFFD8();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v13) = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Completion block cannot be nil", &v13, 2u);
    }
  }
}

- (void)fadeWithFadeOutCompletion:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = sub_1006CFFD8();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v21) = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "Begin a new fade", &v21, 2u);
    }

    v6 = [(VLFScanningAnimationManager *)self layer];
    v7 = [v6 animationForKey:@"fadeIn"];

    if (v7)
    {
      v8 = sub_1006CFFD8();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v21) = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "There is an on-going fade in animation; removing it first", &v21, 2u);
      }

      v9 = [(VLFScanningAnimationManager *)self layer];
      [v9 removeAnimationForKey:@"fadeIn"];
    }

    [(VLFScanningAnimationManager *)self setFadeOutCompletion:v4];
    v10 = [(VLFScanningAnimationManager *)self layer];
    v11 = [v10 animationForKey:@"fadeOut"];

    v12 = sub_1006CFFD8();
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG);
    if (v11)
    {
      if (v13)
      {
        LOWORD(v21) = 0;
        v14 = "There is an on-going fade out animation; letting it finish with the new completion block";
        v15 = v12;
        v16 = OS_LOG_TYPE_DEBUG;
LABEL_11:
        _os_log_impl(&_mh_execute_header, v15, v16, v14, &v21, 2u);
      }
    }

    else
    {
      if (v13)
      {
        LOWORD(v21) = 0;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "Starting a new fade out animation", &v21, 2u);
      }

      v12 = [(VLFScanningAnimationManager *)self layer];
      v17 = [(VLFScanningAnimationManager *)self opacityAnimationWithToValue:0.0];
      [v12 addAnimation:v17 forKey:@"fadeOut"];
    }
  }

  else
  {
    v18 = sub_10006D178();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v21 = 136315906;
      v22 = "[VLFScanningAnimationManager fadeWithFadeOutCompletion:]";
      v23 = 2080;
      v24 = "VLFScanningAnimationManager.m";
      v25 = 1024;
      v26 = 63;
      v27 = 2080;
      v28 = "completion != nil";
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%s [%s:%d] Invalid parameter not satisfying: %s", &v21, 0x26u);
    }

    if (sub_100E03634())
    {
      v19 = sub_10006D178();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v20 = +[NSThread callStackSymbols];
        v21 = 138412290;
        v22 = v20;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "%@", &v21, 0xCu);
      }
    }

    v12 = sub_1006CFFD8();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v21) = 0;
      v14 = "Completion block cannot be nil";
      v15 = v12;
      v16 = OS_LOG_TYPE_ERROR;
      goto LABEL_11;
    }
  }
}

- (VLFScanningAnimationManager)initWithLayer:(id)a3 animationDuration:(double)a4 timingFunction:(id)a5
{
  v9 = a3;
  v10 = a5;
  if (!v9)
  {
    v14 = sub_10006D178();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v22 = "[VLFScanningAnimationManager initWithLayer:animationDuration:timingFunction:]";
      v23 = 2080;
      v24 = "VLFScanningAnimationManager.m";
      v25 = 1024;
      v26 = 45;
      v27 = 2080;
      v28 = "layer != nil";
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%s [%s:%d] Invalid parameter not satisfying: %s", buf, 0x26u);
    }

    if (sub_100E03634())
    {
      v15 = sub_10006D178();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v16 = +[NSThread callStackSymbols];
        *buf = 138412290;
        v22 = v16;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }
  }

  if (!v10)
  {
    v17 = sub_10006D178();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v22 = "[VLFScanningAnimationManager initWithLayer:animationDuration:timingFunction:]";
      v23 = 2080;
      v24 = "VLFScanningAnimationManager.m";
      v25 = 1024;
      v26 = 46;
      v27 = 2080;
      v28 = "timingFunction != nil";
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%s [%s:%d] Invalid parameter not satisfying: %s", buf, 0x26u);
    }

    if (sub_100E03634())
    {
      v18 = sub_10006D178();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = +[NSThread callStackSymbols];
        *buf = 138412290;
        v22 = v19;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }
  }

  v20.receiver = self;
  v20.super_class = VLFScanningAnimationManager;
  v11 = [(VLFScanningAnimationManager *)&v20 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_layer, a3);
    v12->_animationDuration = a4;
    objc_storeStrong(&v12->_timingFunction, a5);
  }

  return v12;
}

- (VLFScanningAnimationManager)initWithLayer:(id)a3
{
  v4 = a3;
  LODWORD(v5) = 1051260355;
  LODWORD(v6) = 1059816735;
  LODWORD(v7) = 1.0;
  v8 = [CAMediaTimingFunction functionWithControlPoints:v5];
  v9 = [(VLFScanningAnimationManager *)self initWithLayer:v4 animationDuration:v8 timingFunction:0.35];

  return v9;
}

@end