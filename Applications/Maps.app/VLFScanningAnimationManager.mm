@interface VLFScanningAnimationManager
- (VLFScanningAnimationManager)initWithLayer:(id)layer;
- (VLFScanningAnimationManager)initWithLayer:(id)layer animationDuration:(double)duration timingFunction:(id)function;
- (id)opacityAnimationWithToValue:(double)value;
- (void)animationDidStop:(id)stop finished:(BOOL)finished;
- (void)fadeWithFadeOutCompletion:(id)completion;
- (void)replaceOnGoingFadeOutCompletion:(id)completion;
@end

@implementation VLFScanningAnimationManager

- (void)animationDidStop:(id)stop finished:(BOOL)finished
{
  finishedCopy = finished;
  stopCopy = stop;
  layer = [(VLFScanningAnimationManager *)self layer];
  v8 = [layer animationForKey:@"fadeOut"];

  v9 = sub_1006CFFD8();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG);
  if (v8 == stopCopy)
  {
    if (v10)
    {
      v14 = @"NO";
      if (finishedCopy)
      {
        v14 = @"YES";
      }

      v15 = v14;
      v20 = 138412290;
      v21 = v15;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "Fade out animation finished: %@", &v20, 0xCu);
    }

    layer2 = [(VLFScanningAnimationManager *)self layer];
    [layer2 removeAnimationForKey:@"fadeOut"];

    fadeOutCompletion = [(VLFScanningAnimationManager *)self fadeOutCompletion];
    [(VLFScanningAnimationManager *)self setFadeOutCompletion:0];
    fadeOutCompletion[2](fadeOutCompletion);
    if (finishedCopy)
    {
      v17 = sub_1006CFFD8();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v20) = 0;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "Starting a new fade in animation", &v20, 2u);
      }

      layer3 = [(VLFScanningAnimationManager *)self layer];
      v19 = [(VLFScanningAnimationManager *)self opacityAnimationWithToValue:1.0];
      [layer3 addAnimation:v19 forKey:@"fadeIn"];
    }
  }

  else
  {
    if (v10)
    {
      v11 = @"NO";
      if (finishedCopy)
      {
        v11 = @"YES";
      }

      v12 = v11;
      v20 = 138412290;
      v21 = v12;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "Fade in animation finished: %@", &v20, 0xCu);
    }

    fadeOutCompletion = [(VLFScanningAnimationManager *)self layer];
    [fadeOutCompletion removeAnimationForKey:@"fadeIn"];
  }
}

- (id)opacityAnimationWithToValue:(double)value
{
  v5 = [CABasicAnimation animationWithKeyPath:@"opacity"];
  [v5 setDelegate:self];
  layer = [(VLFScanningAnimationManager *)self layer];
  presentationLayer = [layer presentationLayer];

  layer2 = [(VLFScanningAnimationManager *)self layer];
  v9 = layer2;
  if (presentationLayer)
  {
    presentationLayer2 = [layer2 presentationLayer];
    [presentationLayer2 opacity];
    v12 = v11;
  }

  else
  {
    [layer2 opacity];
    v12 = v13;
  }

  v14 = v12;
  v15 = sub_1006CFFD8();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    v26 = 134218240;
    v27 = *&v14;
    v28 = 2048;
    valueCopy = value;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "Creating new opacity animation from: %f, to: %f", &v26, 0x16u);
  }

  v16 = [NSNumber numberWithDouble:v14];
  [v5 setFromValue:v16];

  v17 = [NSNumber numberWithDouble:value];
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

  [v5 setDuration:{v21 * vabdd_f64(v14, value)}];
  [v5 setRemovedOnCompletion:0];
  [v5 setFillMode:kCAFillModeForwards];
  timingFunction = [(VLFScanningAnimationManager *)self timingFunction];
  [v5 setTimingFunction:timingFunction];

  return v5;
}

- (void)replaceOnGoingFadeOutCompletion:(id)completion
{
  completionCopy = completion;
  if (completionCopy)
  {
    layer = [(VLFScanningAnimationManager *)self layer];
    v6 = [layer animationForKey:@"fadeOut"];

    v7 = sub_1006CFFD8();
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG);
    if (v6)
    {
      if (v8)
      {
        LOWORD(v13) = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "Replacing existing fade out completion block", &v13, 2u);
      }

      [(VLFScanningAnimationManager *)self setFadeOutCompletion:completionCopy];
    }

    else
    {
      if (v8)
      {
        LOWORD(v13) = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "There is no on-going fade out animation; executing completion block immediately", &v13, 2u);
      }

      completionCopy[2](completionCopy);
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

- (void)fadeWithFadeOutCompletion:(id)completion
{
  completionCopy = completion;
  if (completionCopy)
  {
    v5 = sub_1006CFFD8();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v21) = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "Begin a new fade", &v21, 2u);
    }

    layer = [(VLFScanningAnimationManager *)self layer];
    v7 = [layer animationForKey:@"fadeIn"];

    if (v7)
    {
      v8 = sub_1006CFFD8();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v21) = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "There is an on-going fade in animation; removing it first", &v21, 2u);
      }

      layer2 = [(VLFScanningAnimationManager *)self layer];
      [layer2 removeAnimationForKey:@"fadeIn"];
    }

    [(VLFScanningAnimationManager *)self setFadeOutCompletion:completionCopy];
    layer3 = [(VLFScanningAnimationManager *)self layer];
    v11 = [layer3 animationForKey:@"fadeOut"];

    layer4 = sub_1006CFFD8();
    v13 = os_log_type_enabled(layer4, OS_LOG_TYPE_DEBUG);
    if (v11)
    {
      if (v13)
      {
        LOWORD(v21) = 0;
        v14 = "There is an on-going fade out animation; letting it finish with the new completion block";
        v15 = layer4;
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
        _os_log_impl(&_mh_execute_header, layer4, OS_LOG_TYPE_DEBUG, "Starting a new fade out animation", &v21, 2u);
      }

      layer4 = [(VLFScanningAnimationManager *)self layer];
      v17 = [(VLFScanningAnimationManager *)self opacityAnimationWithToValue:0.0];
      [layer4 addAnimation:v17 forKey:@"fadeOut"];
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

    layer4 = sub_1006CFFD8();
    if (os_log_type_enabled(layer4, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v21) = 0;
      v14 = "Completion block cannot be nil";
      v15 = layer4;
      v16 = OS_LOG_TYPE_ERROR;
      goto LABEL_11;
    }
  }
}

- (VLFScanningAnimationManager)initWithLayer:(id)layer animationDuration:(double)duration timingFunction:(id)function
{
  layerCopy = layer;
  functionCopy = function;
  if (!layerCopy)
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

  if (!functionCopy)
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
    objc_storeStrong(&v11->_layer, layer);
    v12->_animationDuration = duration;
    objc_storeStrong(&v12->_timingFunction, function);
  }

  return v12;
}

- (VLFScanningAnimationManager)initWithLayer:(id)layer
{
  layerCopy = layer;
  LODWORD(v5) = 1051260355;
  LODWORD(v6) = 1059816735;
  LODWORD(v7) = 1.0;
  v8 = [CAMediaTimingFunction functionWithControlPoints:v5];
  v9 = [(VLFScanningAnimationManager *)self initWithLayer:layerCopy animationDuration:v8 timingFunction:0.35];

  return v9;
}

@end