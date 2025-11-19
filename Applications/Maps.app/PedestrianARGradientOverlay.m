@interface PedestrianARGradientOverlay
- (PedestrianARGradientOverlay)initWithConfiguration:(id)a3;
- (void)_updateGradient;
- (void)layoutSubviews;
- (void)setState:(int64_t)a3;
@end

@implementation PedestrianARGradientOverlay

- (void)_updateGradient
{
  [(PedestrianARGradientOverlay *)self frame];
  Width = CGRectGetWidth(v49);
  [(PedestrianARGradientOverlay *)self frame];
  Height = CGRectGetHeight(v50);
  v5 = [(PedestrianARGradientOverlay *)self configuration];
  v6 = v5;
  if (Width <= Height)
  {
    [v5 portraitStartPoint];
    v28 = v27;
    v30 = v29;
    v31 = [self->_localizingGradientView gradientLayer];
    [v31 setStartPoint:{v28, v30}];

    v32 = [(PedestrianARGradientOverlay *)self configuration];
    [v32 portraitEndPoint];
    v34 = v33;
    v36 = v35;
    v37 = [self->_localizingGradientView gradientLayer];
    [v37 setEndPoint:{v34, v36}];

    v38 = [(PedestrianARGradientOverlay *)self configuration];
    [v38 portraitStartPoint];
    v40 = v39;
    v42 = v41;
    p_runningGradientView = &self->_runningGradientView;
    v43 = [self->_runningGradientView gradientLayer];
    [v43 setStartPoint:{v40, v42}];

    v47 = [(PedestrianARGradientOverlay *)self configuration];
    [v47 portraitEndPoint];
  }

  else
  {
    [v5 landscapeStartPoint];
    v8 = v7;
    v10 = v9;
    v11 = [self->_localizingGradientView gradientLayer];
    [v11 setStartPoint:{v8, v10}];

    v12 = [(PedestrianARGradientOverlay *)self configuration];
    [v12 landscapeEndPoint];
    v14 = v13;
    v16 = v15;
    v17 = [self->_localizingGradientView gradientLayer];
    [v17 setEndPoint:{v14, v16}];

    v18 = [(PedestrianARGradientOverlay *)self configuration];
    [v18 landscapeStartPoint];
    v20 = v19;
    v22 = v21;
    p_runningGradientView = &self->_runningGradientView;
    v24 = [self->_runningGradientView gradientLayer];
    [v24 setStartPoint:{v20, v22}];

    v47 = [(PedestrianARGradientOverlay *)self configuration];
    [v47 landscapeEndPoint];
  }

  v44 = v25;
  v45 = v26;
  v46 = [*p_runningGradientView gradientLayer];
  [v46 setEndPoint:{v44, v45}];
}

- (void)setState:(int64_t)a3
{
  if (self->_state != a3)
  {
    self->_state = a3;
    if (a3 > 1)
    {
      if (a3 == 2)
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

      if (a3 == 3)
      {
        v13 = [UIColor colorWithRed:0.0 green:0.0 blue:0.0 alpha:0.6];
        [(PedestrianARGradientOverlay *)self setBackgroundColor:v13];

        v14 = [(PedestrianARGradientOverlay *)self runningGradientView];
        v15 = [v14 layer];
        [v15 setOpacity:0.0];

        v22 = [(PedestrianARGradientOverlay *)self localizingGradientView];
        v16 = [v22 layer];
        LODWORD(v17) = 1.0;
        [v16 setOpacity:v17];
      }
    }

    else
    {
      if (a3)
      {
        if (a3 != 1)
        {
          return;
        }

        v4 = +[UIColor clearColor];
        [(PedestrianARGradientOverlay *)self setBackgroundColor:v4];

        v5 = [(PedestrianARGradientOverlay *)self runningGradientView];
        v6 = [v5 layer];
        LODWORD(v7) = 1.0;
        [v6 setOpacity:v7];

        v8 = [(PedestrianARGradientOverlay *)self localizingGradientView];
        v9 = [v8 layer];
        [v9 setOpacity:0.0];

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

- (PedestrianARGradientOverlay)initWithConfiguration:(id)a3
{
  v4 = a3;
  if (!v4)
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
  v8 = [(PedestrianARGradientOverlay *)&v94 initWithFrame:CGRectZero.origin.x, y, width, height];
  if (v8)
  {
    if (qword_10195DD48 != -1)
    {
      dispatch_once(&qword_10195DD48, &stru_10162EED8);
    }

    v9 = qword_10195DD40;
    if (os_log_type_enabled(qword_10195DD40, OS_LOG_TYPE_INFO))
    {
      *buf = 134349314;
      v100 = v8;
      v101 = 2112;
      v102 = v4;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "[%{public}p] Initializing with configuration: %@", buf, 0x16u);
    }

    v10 = [v4 copy];
    configuration = v8->_configuration;
    v8->_configuration = v10;

    v12 = [[GradientView alloc] initWithFrame:CGRectZero.origin.x, y, width, height];
    localizingGradientView = v8->_localizingGradientView;
    v8->_localizingGradientView = v12;

    [v8->_localizingGradientView setTranslatesAutoresizingMaskIntoConstraints:0];
    v14 = [v8->_localizingGradientView layer];
    [v14 setOpacity:0.0];

    v15 = [v8->_localizingGradientView gradientLayer];
    [v15 setLocations:&off_1016ED088];

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
    v19 = v93 = v4;
    v98[8] = [v19 CGColor];
    v20 = +[UIColor blackColor];
    v21 = [v20 colorWithAlphaComponent:0.35];
    v98[9] = [v21 CGColor];
    v22 = [NSArray arrayWithObjects:v98 count:10];
    v23 = [v8->_localizingGradientView gradientLayer];
    [v23 setColors:v22];

    [(PedestrianARGradientOverlay *)v8 addSubview:v8->_localizingGradientView];
    v90 = [v8->_localizingGradientView leadingAnchor];
    v86 = [(PedestrianARGradientOverlay *)v8 leadingAnchor];
    v82 = [v90 constraintEqualToAnchor:v86];
    v97[0] = v82;
    v78 = [v8->_localizingGradientView trailingAnchor];
    v24 = [(PedestrianARGradientOverlay *)v8 trailingAnchor];
    v25 = [v78 constraintEqualToAnchor:v24];
    v97[1] = v25;
    v26 = [v8->_localizingGradientView topAnchor];
    v27 = [(PedestrianARGradientOverlay *)v8 topAnchor];
    v28 = [v26 constraintEqualToAnchor:v27];
    v97[2] = v28;
    v29 = [v8->_localizingGradientView bottomAnchor];
    v30 = [(PedestrianARGradientOverlay *)v8 bottomAnchor];
    v31 = [v29 constraintEqualToAnchor:v30];
    v97[3] = v31;
    v32 = [NSArray arrayWithObjects:v97 count:4];
    [NSLayoutConstraint activateConstraints:v32];

    v33 = [[GradientView alloc] initWithFrame:CGRectZero.origin.x, y, width, height];
    runningGradientView = v8->_runningGradientView;
    v8->_runningGradientView = v33;

    [v8->_runningGradientView setTranslatesAutoresizingMaskIntoConstraints:0];
    v35 = [v8->_runningGradientView gradientLayer];
    [v35 setLocations:&off_1016ED0A0];

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
    v44 = [v8->_runningGradientView gradientLayer];
    [v44 setColors:v43];

    [(PedestrianARGradientOverlay *)v8 addSubview:v8->_runningGradientView];
    v92 = [v8->_runningGradientView leadingAnchor];
    v88 = [(PedestrianARGradientOverlay *)v8 leadingAnchor];
    v84 = [v92 constraintEqualToAnchor:v88];
    v95[0] = v84;
    v80 = [v8->_runningGradientView trailingAnchor];
    v45 = [(PedestrianARGradientOverlay *)v8 trailingAnchor];
    v46 = [v80 constraintEqualToAnchor:v45];
    v95[1] = v46;
    v47 = [v8->_runningGradientView topAnchor];
    v48 = [(PedestrianARGradientOverlay *)v8 topAnchor];
    v49 = [v47 constraintEqualToAnchor:v48];
    v95[2] = v49;
    v50 = [v8->_runningGradientView bottomAnchor];
    v51 = [(PedestrianARGradientOverlay *)v8 bottomAnchor];
    v52 = [v50 constraintEqualToAnchor:v51];
    v95[3] = v52;
    v53 = [NSArray arrayWithObjects:v95 count:4];
    [NSLayoutConstraint activateConstraints:v53];

    v4 = v93;
  }

  return v8;
}

@end