@interface PedestrianARGradientOverlay
- (PedestrianARGradientOverlay)initWithConfiguration:(id)configuration;
- (void)_updateGradient;
- (void)layoutSubviews;
- (void)setState:(int64_t)state;
@end

@implementation PedestrianARGradientOverlay

- (void)_updateGradient
{
  [(PedestrianARGradientOverlay *)self frame];
  Width = CGRectGetWidth(v49);
  [(PedestrianARGradientOverlay *)self frame];
  Height = CGRectGetHeight(v50);
  configuration = [(PedestrianARGradientOverlay *)self configuration];
  v6 = configuration;
  if (Width <= Height)
  {
    [configuration portraitStartPoint];
    v28 = v27;
    v30 = v29;
    gradientLayer = [self->_localizingGradientView gradientLayer];
    [gradientLayer setStartPoint:{v28, v30}];

    configuration2 = [(PedestrianARGradientOverlay *)self configuration];
    [configuration2 portraitEndPoint];
    v34 = v33;
    v36 = v35;
    gradientLayer2 = [self->_localizingGradientView gradientLayer];
    [gradientLayer2 setEndPoint:{v34, v36}];

    configuration3 = [(PedestrianARGradientOverlay *)self configuration];
    [configuration3 portraitStartPoint];
    v40 = v39;
    v42 = v41;
    p_runningGradientView = &self->_runningGradientView;
    gradientLayer3 = [self->_runningGradientView gradientLayer];
    [gradientLayer3 setStartPoint:{v40, v42}];

    configuration4 = [(PedestrianARGradientOverlay *)self configuration];
    [configuration4 portraitEndPoint];
  }

  else
  {
    [configuration landscapeStartPoint];
    v8 = v7;
    v10 = v9;
    gradientLayer4 = [self->_localizingGradientView gradientLayer];
    [gradientLayer4 setStartPoint:{v8, v10}];

    configuration5 = [(PedestrianARGradientOverlay *)self configuration];
    [configuration5 landscapeEndPoint];
    v14 = v13;
    v16 = v15;
    gradientLayer5 = [self->_localizingGradientView gradientLayer];
    [gradientLayer5 setEndPoint:{v14, v16}];

    configuration6 = [(PedestrianARGradientOverlay *)self configuration];
    [configuration6 landscapeStartPoint];
    v20 = v19;
    v22 = v21;
    p_runningGradientView = &self->_runningGradientView;
    gradientLayer6 = [self->_runningGradientView gradientLayer];
    [gradientLayer6 setStartPoint:{v20, v22}];

    configuration4 = [(PedestrianARGradientOverlay *)self configuration];
    [configuration4 landscapeEndPoint];
  }

  v44 = v25;
  v45 = v26;
  gradientLayer7 = [*p_runningGradientView gradientLayer];
  [gradientLayer7 setEndPoint:{v44, v45}];
}

- (void)setState:(int64_t)state
{
  if (self->_state != state)
  {
    self->_state = state;
    if (state > 1)
    {
      if (state == 2)
      {
        v21 = +[UIColor clearColor];
        [(PedestrianARGradientOverlay *)self setBackgroundColor:v21];

        v23[0] = _NSConcreteStackBlock;
        v23[1] = 3221225472;
        v23[2] = sub_100929824;
        v23[3] = &unk_101661B18;
        v23[4] = self;
        v10 = 0.75;
        v11 = v23;
        v12 = 0x20000;
LABEL_18:
        [UIView animateWithDuration:v12 delay:v11 options:0 animations:v10 completion:0.0];
        return;
      }

      if (state == 3)
      {
        v13 = [UIColor colorWithRed:0.0 green:0.0 blue:0.0 alpha:0.6];
        [(PedestrianARGradientOverlay *)self setBackgroundColor:v13];

        runningGradientView = [(PedestrianARGradientOverlay *)self runningGradientView];
        layer = [runningGradientView layer];
        [layer setOpacity:0.0];

        localizingGradientView = [(PedestrianARGradientOverlay *)self localizingGradientView];
        layer2 = [localizingGradientView layer];
        LODWORD(v17) = 1.0;
        [layer2 setOpacity:v17];
      }
    }

    else
    {
      if (state)
      {
        if (state != 1)
        {
          return;
        }

        v4 = +[UIColor clearColor];
        [(PedestrianARGradientOverlay *)self setBackgroundColor:v4];

        runningGradientView2 = [(PedestrianARGradientOverlay *)self runningGradientView];
        layer3 = [runningGradientView2 layer];
        LODWORD(v7) = 1.0;
        [layer3 setOpacity:v7];

        localizingGradientView2 = [(PedestrianARGradientOverlay *)self localizingGradientView];
        layer4 = [localizingGradientView2 layer];
        [layer4 setOpacity:0.0];

        v24[0] = _NSConcreteStackBlock;
        v24[1] = 3221225472;
        v24[2] = sub_10092978C;
        v24[3] = &unk_101661B18;
        v24[4] = self;
        v10 = 0.3;
        v11 = v24;
        v12 = 0x10000;
        goto LABEL_18;
      }

      v18 = sub_10006D178();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v26 = "[PedestrianARGradientOverlay setState:]";
        v27 = 2080;
        v28 = "PedestrianARGradientOverlay.m";
        v29 = 1024;
        v30 = 163;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion reached unexpectedly!", buf, 0x1Cu);
      }

      if (sub_100E03634())
      {
        v19 = sub_10006D178();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          v20 = +[NSThread callStackSymbols];
          *buf = 138412290;
          v26 = v20;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
        }
      }
    }
  }
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = PedestrianARGradientOverlay;
  [(PedestrianARGradientOverlay *)&v3 layoutSubviews];
  [(PedestrianARGradientOverlay *)self _updateGradient];
}

- (PedestrianARGradientOverlay)initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  if (!configurationCopy)
  {
    v55 = sub_10006D178();
    if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v100 = "[PedestrianARGradientOverlay initWithConfiguration:]";
      v101 = 2080;
      v102 = "PedestrianARGradientOverlay.m";
      v103 = 1024;
      v104 = 34;
      v105 = 2080;
      v106 = "configuration != nil";
      _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_ERROR, "%s [%s:%d] Invalid parameter not satisfying: %s", buf, 0x26u);
    }

    if (sub_100E03634())
    {
      v56 = sub_10006D178();
      if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
      {
        v57 = +[NSThread callStackSymbols];
        *buf = 138412290;
        v100 = v57;
        _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }
  }

  v94.receiver = self;
  v94.super_class = PedestrianARGradientOverlay;
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  height = [(PedestrianARGradientOverlay *)&v94 initWithFrame:CGRectZero.origin.x, y, width, height];
  if (height)
  {
    if (qword_10195DD48 != -1)
    {
      dispatch_once(&qword_10195DD48, &stru_10162EED8);
    }

    v9 = qword_10195DD40;
    if (os_log_type_enabled(qword_10195DD40, OS_LOG_TYPE_INFO))
    {
      *buf = 134349314;
      v100 = height;
      v101 = 2112;
      v102 = configurationCopy;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "[%{public}p] Initializing with configuration: %@", buf, 0x16u);
    }

    v10 = [configurationCopy copy];
    configuration = height->_configuration;
    height->_configuration = v10;

    height2 = [[GradientView alloc] initWithFrame:CGRectZero.origin.x, y, width, height];
    localizingGradientView = height->_localizingGradientView;
    height->_localizingGradientView = height2;

    [height->_localizingGradientView setTranslatesAutoresizingMaskIntoConstraints:0];
    layer = [height->_localizingGradientView layer];
    [layer setOpacity:0.0];

    gradientLayer = [height->_localizingGradientView gradientLayer];
    [gradientLayer setLocations:&off_1016ED088];

    v89 = +[UIColor blackColor];
    v85 = [v89 colorWithAlphaComponent:0.0];
    v98[0] = [v85 CGColor];
    v81 = +[UIColor blackColor];
    v77 = [v81 colorWithAlphaComponent:0.0120027435];
    v98[1] = [v77 CGColor];
    v75 = +[UIColor blackColor];
    v73 = [v75 colorWithAlphaComponent:0.044170096];
    v98[2] = [v73 CGColor];
    v71 = +[UIColor blackColor];
    v69 = [v71 colorWithAlphaComponent:0.0907407408];
    v98[3] = [v69 CGColor];
    v67 = +[UIColor blackColor];
    v65 = [v67 colorWithAlphaComponent:0.145953361];
    v98[4] = [v65 CGColor];
    v63 = +[UIColor blackColor];
    v61 = [v63 colorWithAlphaComponent:0.204046639];
    v98[5] = [v61 CGColor];
    v59 = +[UIColor blackColor];
    v16 = [v59 colorWithAlphaComponent:0.259259259];
    v98[6] = [v16 CGColor];
    v58 = +[UIColor blackColor];
    v17 = [v58 colorWithAlphaComponent:0.305829904];
    v98[7] = [v17 CGColor];
    v18 = +[UIColor blackColor];
    [v18 colorWithAlphaComponent:0.337997257];
    v19 = v93 = configurationCopy;
    v98[8] = [v19 CGColor];
    v20 = +[UIColor blackColor];
    v21 = [v20 colorWithAlphaComponent:0.35];
    v98[9] = [v21 CGColor];
    v22 = [NSArray arrayWithObjects:v98 count:10];
    gradientLayer2 = [height->_localizingGradientView gradientLayer];
    [gradientLayer2 setColors:v22];

    [(PedestrianARGradientOverlay *)height addSubview:height->_localizingGradientView];
    leadingAnchor = [height->_localizingGradientView leadingAnchor];
    leadingAnchor2 = [(PedestrianARGradientOverlay *)height leadingAnchor];
    v82 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v97[0] = v82;
    trailingAnchor = [height->_localizingGradientView trailingAnchor];
    trailingAnchor2 = [(PedestrianARGradientOverlay *)height trailingAnchor];
    v25 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v97[1] = v25;
    topAnchor = [height->_localizingGradientView topAnchor];
    topAnchor2 = [(PedestrianARGradientOverlay *)height topAnchor];
    v28 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v97[2] = v28;
    bottomAnchor = [height->_localizingGradientView bottomAnchor];
    bottomAnchor2 = [(PedestrianARGradientOverlay *)height bottomAnchor];
    v31 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v97[3] = v31;
    v32 = [NSArray arrayWithObjects:v97 count:4];
    [NSLayoutConstraint activateConstraints:v32];

    height3 = [[GradientView alloc] initWithFrame:CGRectZero.origin.x, y, width, height];
    runningGradientView = height->_runningGradientView;
    height->_runningGradientView = height3;

    [height->_runningGradientView setTranslatesAutoresizingMaskIntoConstraints:0];
    gradientLayer3 = [height->_runningGradientView gradientLayer];
    [gradientLayer3 setLocations:&off_1016ED0A0];

    v91 = +[UIColor blackColor];
    v87 = [v91 colorWithAlphaComponent:0.0];
    v96[0] = [v87 CGColor];
    v83 = +[UIColor blackColor];
    v79 = [v83 colorWithAlphaComponent:0.0257201646];
    v96[1] = [v79 CGColor];
    v76 = +[UIColor blackColor];
    v74 = [v76 colorWithAlphaComponent:0.0946502057];
    v96[2] = [v74 CGColor];
    v72 = +[UIColor blackColor];
    v70 = [v72 colorWithAlphaComponent:0.194444444];
    v96[3] = [v70 CGColor];
    v68 = +[UIColor blackColor];
    v66 = [v68 colorWithAlphaComponent:0.312757202];
    v96[4] = [v66 CGColor];
    v64 = +[UIColor blackColor];
    v62 = [v64 colorWithAlphaComponent:0.437242798];
    v96[5] = [v62 CGColor];
    v60 = +[UIColor blackColor];
    v36 = [v60 colorWithAlphaComponent:0.555555556];
    v96[6] = [v36 CGColor];
    v37 = +[UIColor blackColor];
    v38 = [v37 colorWithAlphaComponent:0.655349794];
    v96[7] = [v38 CGColor];
    v39 = +[UIColor blackColor];
    v40 = [v39 colorWithAlphaComponent:0.724279835];
    v96[8] = [v40 CGColor];
    v41 = +[UIColor blackColor];
    v42 = [v41 colorWithAlphaComponent:0.75];
    v96[9] = [v42 CGColor];
    v43 = [NSArray arrayWithObjects:v96 count:10];
    gradientLayer4 = [height->_runningGradientView gradientLayer];
    [gradientLayer4 setColors:v43];

    [(PedestrianARGradientOverlay *)height addSubview:height->_runningGradientView];
    leadingAnchor3 = [height->_runningGradientView leadingAnchor];
    leadingAnchor4 = [(PedestrianARGradientOverlay *)height leadingAnchor];
    v84 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
    v95[0] = v84;
    trailingAnchor3 = [height->_runningGradientView trailingAnchor];
    trailingAnchor4 = [(PedestrianARGradientOverlay *)height trailingAnchor];
    v46 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
    v95[1] = v46;
    topAnchor3 = [height->_runningGradientView topAnchor];
    topAnchor4 = [(PedestrianARGradientOverlay *)height topAnchor];
    v49 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
    v95[2] = v49;
    bottomAnchor3 = [height->_runningGradientView bottomAnchor];
    bottomAnchor4 = [(PedestrianARGradientOverlay *)height bottomAnchor];
    v52 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
    v95[3] = v52;
    v53 = [NSArray arrayWithObjects:v95 count:4];
    [NSLayoutConstraint activateConstraints:v53];

    configurationCopy = v93;
  }

  return height;
}

@end