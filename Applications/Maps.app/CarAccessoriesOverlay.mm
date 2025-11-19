@interface CarAccessoriesOverlay
- (BOOL)_shouldShowHeadingIndicator;
- (BOOL)_shouldShowSpeedSign;
- (BOOL)_wantsHorizontalLayout;
- (CarAccessoriesOverlay)initWithCarSceneType:(int64_t)a3;
- (ChromeOverlayHosting)host;
- (void)dealloc;
- (void)lightLevelController:(id)a3 didUpdateLightLevel:(int64_t)a4;
- (void)reloadAnimated:(BOOL)a3;
- (void)setContentView:(id)a3 layoutGuide:(id)a4;
- (void)setHidden:(BOOL)a3 animated:(BOOL)a4;
- (void)setHost:(id)a3;
- (void)setShowSpeedSign:(BOOL)a3;
- (void)valueChangedForGEOConfigKey:(id)a3;
@end

@implementation CarAccessoriesOverlay

- (BOOL)_shouldShowHeadingIndicator
{
  if ([(CarAccessoriesOverlay *)self headingIndicatorIgnoresUserSettings]|| (v3 = [(CarAccessoriesOverlay *)self userPermitsHeadingIndicator]))
  {

    LOBYTE(v3) = [(CarAccessoriesOverlay *)self showHeadingIndicator];
  }

  return v3;
}

- (BOOL)_shouldShowSpeedSign
{
  if ([(CarAccessoriesOverlay *)self speedSignIgnoresUserSettings]|| (v3 = [(CarAccessoriesOverlay *)self userPermitsSpeedSign]))
  {

    LOBYTE(v3) = [(CarAccessoriesOverlay *)self showSpeedSign];
  }

  return v3;
}

- (ChromeOverlayHosting)host
{
  WeakRetained = objc_loadWeakRetained(&self->_host);

  return WeakRetained;
}

- (BOOL)_wantsHorizontalLayout
{
  if (self->_sceneType != 6)
  {
    return 0;
  }

  v2 = [(UIStackView *)self->_accessoryStackView window];
  v3 = [v2 _car_hybridInstrumentClusterAlignment] == 0;

  return v3;
}

- (void)valueChangedForGEOConfigKey:(id)a3
{
  BOOL = GEOConfigGetBOOL();
  v5 = GEOConfigGetBOOL();
  if (self->_userPermitsHeadingIndicator == BOOL)
  {
    if (self->_userPermitsSpeedSign == v5)
    {
      return;
    }

    goto LABEL_9;
  }

  self->_userPermitsHeadingIndicator = BOOL;
  if (self->_userPermitsSpeedSign != v5)
  {
LABEL_9:
    self->_userPermitsSpeedSign = v5;
    if (self->_speedSignIgnoresUserSettings)
    {
      return;
    }

    goto LABEL_6;
  }

  if (self->_headingIndicatorIgnoresUserSettings)
  {
    return;
  }

LABEL_6:

  [(CarAccessoriesOverlay *)self reloadAnimated:1];
}

- (void)lightLevelController:(id)a3 didUpdateLightLevel:(int64_t)a4
{
  v5 = [a3 shouldUseNightMode];
  [(CarSpeedSignView *)self->_speedSignView setDimmed:v5 animated:1];
  v6 = sub_10008DF8C();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = [(CarAccessoriesOverlay *)self host];
    v8 = [v7 overlayContentView];
    v9 = [v8 sceneIdentifierForLogging];
    v10 = @"NO";
    if (v5)
    {
      v10 = @"YES";
    }

    v11 = v10;
    v12 = 134349570;
    v13 = self;
    v14 = 2112;
    v15 = v9;
    v16 = 2112;
    v17 = v11;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "[%{public}p] [%@] carAccessories lightLevelController:didUpdateLightLevel shuldUseNightMode: %@", &v12, 0x20u);
  }
}

- (void)setHidden:(BOOL)a3 animated:(BOOL)a4
{
  if (!self->_accessoryStackView)
  {
    return;
  }

  v4 = a3;
  v5 = self;
  if (!a4)
  {
    goto LABEL_12;
  }

  if (UIAccessibilityIsReduceMotionEnabled())
  {
    v6 = sub_10008DF8C();
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
LABEL_11:

LABEL_12:
      v13 = 0;
      goto LABEL_14;
    }

    v7 = v5;
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    if (objc_opt_respondsToSelector())
    {
      v10 = [(CarAccessoriesOverlay *)v7 performSelector:"accessibilityIdentifier"];
      v11 = v10;
      if (v10 && ![v10 isEqualToString:v9])
      {
        v12 = [NSString stringWithFormat:@"%@<%p, %@>", v9, v7, v11];

        goto LABEL_10;
      }
    }

    v12 = [NSString stringWithFormat:@"%@<%p>", v9, v7];
LABEL_10:

    *buf = 138543362;
    v57 = v12;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "[%{public}@] Reduce motion enabled, running accessory view update without animation", buf, 0xCu);

    goto LABEL_11;
  }

  v13 = 1;
LABEL_14:
  v14 = !v4;
  [(UIStackView *)v5->_accessoryStackView alpha];
  if (v15 != !v4)
  {
    v16 = sub_10008DF8C();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      v17 = [(CarAccessoriesOverlay *)v5 host];
      v18 = [v17 overlayContentView];
      v19 = [v18 sceneIdentifierForLogging];
      if (v4)
      {
        v20 = @"hide";
      }

      else
      {
        v20 = @"show";
      }

      v21 = [(UIStackView *)v5->_accessoryStackView arrangedSubviews];
      v22 = v21;
      v48 = v20;
      if (v21)
      {
        if ([v21 count])
        {
          v41 = v19;
          v42 = v18;
          v43 = v16;
          v44 = !v4;
          v45 = v13;
          v46 = v5;
          v47 = v4;
          v23 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v22 count]);
          v52 = 0u;
          v53 = 0u;
          v54 = 0u;
          v55 = 0u;
          v40 = v22;
          v24 = v22;
          v25 = [v24 countByEnumeratingWithState:&v52 objects:buf count:16];
          if (!v25)
          {
            goto LABEL_38;
          }

          v26 = v25;
          v27 = *v53;
          while (1)
          {
            v28 = 0;
            do
            {
              if (*v53 != v27)
              {
                objc_enumerationMutation(v24);
              }

              v29 = *(*(&v52 + 1) + 8 * v28);
              if (v29)
              {
                v30 = objc_opt_class();
                v31 = NSStringFromClass(v30);
                if ((objc_opt_respondsToSelector() & 1) == 0)
                {
                  goto LABEL_31;
                }

                v32 = [v29 performSelector:"accessibilityIdentifier"];
                v33 = v32;
                if (v32 && ![v32 isEqualToString:v31])
                {
                  v34 = [NSString stringWithFormat:@"%@<%p, %@>", v31, v29, v33];
                }

                else
                {

LABEL_31:
                  v34 = [NSString stringWithFormat:@"%@<%p>", v31, v29];
                }

                goto LABEL_34;
              }

              v34 = @"<nil>";
LABEL_34:

              [v23 addObject:v34];
              v28 = v28 + 1;
            }

            while (v26 != v28);
            v35 = [v24 countByEnumeratingWithState:&v52 objects:buf count:16];
            v26 = v35;
            if (!v35)
            {
LABEL_38:

              v36 = [v24 componentsJoinedByString:{@", "}];
              v37 = [NSString stringWithFormat:@"<%p> [%@]", v24, v36];

              LOBYTE(v4) = v47;
              v5 = v46;
              v14 = v44;
              v13 = v45;
              v16 = v43;
              v19 = v41;
              v18 = v42;
              v22 = v40;
              goto LABEL_41;
            }
          }
        }

        v37 = [NSString stringWithFormat:@"<%p> (empty)", v22];
      }

      else
      {
        v37 = @"<nil>";
      }

LABEL_41:

      *buf = 134349826;
      v57 = v5;
      v58 = 2112;
      v59 = v19;
      v60 = 2112;
      v61 = v48;
      v62 = 2112;
      v63 = v37;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "[%{public}p] [%@] Will %@ accessory view using alpha (accessories:%@)", buf, 0x2Au);
    }

    v38 = 0.0;
    if (v13)
    {
      v39 = +[UIView _maps_shouldAdoptImplicitAnimationParameters];
      v38 = 0.1;
      if (v39)
      {
        v38 = 0.0;
      }
    }

    v49[0] = _NSConcreteStackBlock;
    v49[1] = 3221225472;
    v49[2] = sub_100E31384;
    v49[3] = &unk_101655CE8;
    v49[4] = v5;
    v50 = v14;
    v51 = v4;
    [UIView animateWithDuration:4 delay:v49 options:0 animations:v38 completion:0.0];
  }
}

- (void)reloadAnimated:(BOOL)a3
{
  if (!self->_accessoryStackView)
  {
    v147 = sub_10008DF8C();
    if (os_log_type_enabled(v147, OS_LOG_TYPE_INFO))
    {
      v15 = [(CarAccessoriesOverlay *)self host];
      v16 = [v15 overlayContentView];
      v17 = [v16 sceneIdentifierForLogging];
      *location = 134349314;
      *&location[4] = self;
      v159 = 2112;
      v160 = v17;
      _os_log_impl(&_mh_execute_header, v147, OS_LOG_TYPE_INFO, "[%{public}p] [%@] Will not reload accessories, overlay not active", location, 0x16u);
    }

    goto LABEL_143;
  }

  v147 = [NSMutableArray arrayWithCapacity:2];
  v3 = self;
  v4 = [(CarAccessoriesOverlay *)self _shouldShowHeadingIndicator];
  headingIndicator = self->_headingIndicator;
  if (v4)
  {
    if (!headingIndicator)
    {
      v6 = [[CarHeadingIndicatorView alloc] initWithCarSceneType:self->_sceneType];
      v7 = self->_headingIndicator;
      self->_headingIndicator = v6;

      [(CarHeadingIndicatorView *)self->_headingIndicator setTranslatesAutoresizingMaskIntoConstraints:0];
      headingIndicator = self->_headingIndicator;
    }

    [(CarHeadingIndicatorView *)headingIndicator setActive:1];
    if (!self->_headingIndicatorObserver)
    {
      objc_initWeak(location, self);
      v8 = +[NSNotificationCenter defaultCenter];
      v9 = self->_headingIndicator;
      v10 = +[NSOperationQueue mainQueue];
      v151[0] = _NSConcreteStackBlock;
      v151[1] = 3221225472;
      v151[2] = sub_100E328DC;
      v151[3] = &unk_10165FBE8;
      objc_copyWeak(&v152, location);
      v11 = [v8 addObserverForName:@"CarHeadingIndicatorViewDidChangeVisibility" object:v9 queue:v10 usingBlock:v151];
      headingIndicatorObserver = self->_headingIndicatorObserver;
      self->_headingIndicatorObserver = v11;

      objc_destroyWeak(&v152);
      objc_destroyWeak(location);
      v3 = self;
    }

    v13 = [(CarHeadingIndicatorView *)v3->_headingIndicator contentsHidden];
    v3 = self;
    if ((v13 & 1) == 0)
    {
      [v147 addObject:self->_headingIndicator];
      v3 = self;
    }
  }

  else if (headingIndicator)
  {
    [(CarHeadingIndicatorView *)headingIndicator setActive:0];
    if (self->_headingIndicatorObserver)
    {
      v18 = +[NSNotificationCenter defaultCenter];
      v3 = self;
      [v18 removeObserver:self->_headingIndicatorObserver];

      v19 = self->_headingIndicatorObserver;
      self->_headingIndicatorObserver = 0;
    }
  }

  v20 = [(CarAccessoriesOverlay *)v3 _shouldShowSpeedSign];
  v21 = sub_10008DF8C();
  v22 = os_log_type_enabled(v21, OS_LOG_TYPE_INFO);
  if (v20)
  {
    if (v22)
    {
      v23 = [(CarAccessoriesOverlay *)self host];
      v24 = [v23 overlayContentView];
      v25 = [v24 sceneIdentifierForLogging];
      *location = 134349314;
      *&location[4] = self;
      v159 = 2112;
      v160 = v25;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "[%{public}p] [%@] Eligible to show speed sign", location, 0x16u);
    }

    speedSignView = self->_speedSignView;
    if (!speedSignView)
    {
      v27 = [[CarSpeedSignView alloc] initWithCarSceneType:self->_sceneType];
      v28 = self->_speedSignView;
      self->_speedSignView = v27;

      [(CarSpeedSignView *)self->_speedSignView setTranslatesAutoresizingMaskIntoConstraints:0];
      [(CarSpeedSignView *)self->_speedSignView setDimmed:[(MapsLightLevelController *)self->_lightLevelController shouldUseNightMode] animated:0];
      speedSignView = self->_speedSignView;
    }

    [(CarSpeedSignView *)speedSignView setActive:1];
    v29 = self;
    if (!self->_speedSignObserver)
    {
      objc_initWeak(location, self);
      v30 = +[NSNotificationCenter defaultCenter];
      v31 = self->_speedSignView;
      v32 = +[NSOperationQueue mainQueue];
      v149[0] = _NSConcreteStackBlock;
      v149[1] = 3221225472;
      v149[2] = sub_100E32A44;
      v149[3] = &unk_10165FBE8;
      objc_copyWeak(&v150, location);
      v33 = [v30 addObserverForName:@"CarSpeedSignViewDidChangeVisibility" object:v31 queue:v32 usingBlock:v149];
      speedSignObserver = self->_speedSignObserver;
      self->_speedSignObserver = v33;

      objc_destroyWeak(&v150);
      objc_destroyWeak(location);
      v29 = self;
    }

    v35 = [(CarSpeedSignView *)v29->_speedSignView contentsHidden];
    v36 = self;
    if (v35)
    {
      goto LABEL_34;
    }

    [v147 addObject:self->_speedSignView];
  }

  else
  {
    if (v22)
    {
      v37 = [(CarAccessoriesOverlay *)self host];
      v38 = [v37 overlayContentView];
      v39 = [v38 sceneIdentifierForLogging];
      if ([(CarAccessoriesOverlay *)self userPermitsSpeedSign])
      {
        v40 = @"YES";
      }

      else
      {
        v40 = @"NO";
      }

      v41 = v40;
      if ([(CarAccessoriesOverlay *)self showSpeedSign])
      {
        v42 = @"YES";
      }

      else
      {
        v42 = @"NO";
      }

      *location = 134349826;
      *&location[4] = self;
      v159 = 2112;
      v160 = v39;
      v161 = 2112;
      *v162 = v40;
      *&v162[8] = 2112;
      *&v162[10] = v42;
      v43 = v42;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "[%{public}p] [%@] Not eligible to show speed sign; userPermitsSpeedSign:(%@), showSpeedSign:(%@)", location, 0x2Au);
    }

    [(CarSpeedSignView *)self->_speedSignView setActive:0];
    v36 = self;
    if (!self->_speedSignObserver)
    {
      goto LABEL_34;
    }

    v44 = +[NSNotificationCenter defaultCenter];
    [v44 removeObserver:self->_speedSignObserver];

    v45 = self->_speedSignObserver;
    self->_speedSignObserver = 0;
  }

  v36 = self;
LABEL_34:
  v46 = [(CarAccessoriesOverlay *)v36 _wantsHorizontalLayout];
  p_accessoryStackView = &self->_accessoryStackView;
  if (v46)
  {
    v48 = 1;
  }

  else
  {
    v48 = 4;
  }

  if (v46)
  {
    v49 = 3;
  }

  else
  {
    v49 = 2;
  }

  [(UIStackView *)self->_accessoryStackView setAxis:v46 ^ 1];
  [(UIStackView *)*p_accessoryStackView setAlignment:v48];
  [(UIStackView *)*p_accessoryStackView setDistribution:v49];
  v50 = +[MapsExternalDevice sharedInstance];
  v51 = [v50 rightHandDrive];

  if ([(UIStackView *)*p_accessoryStackView axis])
  {
    [(NSLayoutConstraint *)self->_leadingConstraint setActive:0];
    [(NSLayoutConstraint *)self->_trailingConstraint setActive:1];
  }

  else if ([v147 count]== 1)
  {
    if ([v147 containsObject:self->_speedSignView])
    {
      [(NSLayoutConstraint *)self->_leadingConstraint setActive:v51];
      [(NSLayoutConstraint *)self->_trailingConstraint setActive:v51 ^ 1];
    }

    else if ([v147 containsObject:self->_headingIndicator])
    {
      [(NSLayoutConstraint *)self->_leadingConstraint setActive:v51 ^ 1];
      [(NSLayoutConstraint *)self->_trailingConstraint setActive:v51];
    }

    else
    {
      v112 = sub_10006D178();
      if (os_log_type_enabled(v112, OS_LOG_TYPE_ERROR))
      {
        *location = 136315650;
        *&location[4] = "[CarAccessoriesOverlay reloadAnimated:]";
        v159 = 2080;
        v160 = "CarAccessoriesOverlay.m";
        v161 = 1024;
        *v162 = 270;
        _os_log_impl(&_mh_execute_header, v112, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion reached unexpectedly!", location, 0x1Cu);
      }

      if (sub_100E03634())
      {
        v113 = sub_10006D178();
        if (os_log_type_enabled(v113, OS_LOG_TYPE_ERROR))
        {
          v114 = +[NSThread callStackSymbols];
          *location = 138412290;
          *&location[4] = v114;
          _os_log_impl(&_mh_execute_header, v113, OS_LOG_TYPE_ERROR, "%@", location, 0xCu);
        }
      }
    }
  }

  else
  {
    [(NSLayoutConstraint *)self->_leadingConstraint setActive:1];
    [(NSLayoutConstraint *)self->_trailingConstraint setActive:1];
  }

  if (![(CarAccessoriesOverlay *)self ignoresCollisionConstraints])
  {
    v52 = [(UIStackView *)self->_accessoryStackView window];
    v53 = [v52 screen];
    v54 = v53 == 0;

    if (v54)
    {
      v131 = sub_10006D178();
      if (os_log_type_enabled(v131, OS_LOG_TYPE_ERROR))
      {
        *location = 136315906;
        *&location[4] = "[CarAccessoriesOverlay reloadAnimated:]";
        v159 = 2080;
        v160 = "CarAccessoriesOverlay.m";
        v161 = 1024;
        *v162 = 282;
        *&v162[4] = 2080;
        *&v162[6] = "_accessoryStackView.window.screen != nil";
        _os_log_impl(&_mh_execute_header, v131, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s)", location, 0x26u);
      }

      if (sub_100E03634())
      {
        v132 = sub_10006D178();
        if (os_log_type_enabled(v132, OS_LOG_TYPE_ERROR))
        {
          v133 = +[NSThread callStackSymbols];
          *location = 138412290;
          *&location[4] = v133;
          _os_log_impl(&_mh_execute_header, v132, OS_LOG_TYPE_ERROR, "%@", location, 0xCu);
        }
      }
    }

    v55 = [(UIStackView *)self->_accessoryStackView window];
    if ([v55 _car_isHybridInstrumentCluster])
    {
      v56 = [(UIStackView *)self->_accessoryStackView window];
      v57 = [v56 _car_hybridInstrumentClusterAlignment] == 2;
    }

    else
    {
      v57 = 0;
    }

    v58 = +[MapsExternalDevice sharedInstance];
    if (([v58 rightHandDrive] | v57))
    {
      v59 = 2;
    }

    else
    {
      v59 = 8;
    }

    v60 = [(CarAccessoriesOverlay *)self host];
    v61 = [v60 collisionGuideForEdge:v59];

    v62 = [(CarAccessoriesOverlay *)self host];
    v63 = [v62 collisionGuideForEdge:1];

    v64 = [(CarAccessoriesOverlay *)self host];
    v65 = [(UIStackView *)self->_accessoryStackView bottomAnchor];
    v66 = [v61 topAnchor];
    v67 = [v65 constraintLessThanOrEqualToAnchor:v66];
    v157[0] = v67;
    v68 = [(UIStackView *)self->_accessoryStackView _maps_leftRHDAnchor];
    v69 = [v63 _maps_rightRHDAnchor];
    LODWORD(v70) = 1148846080;
    v71 = [v68 _maps_constraintWithRHDAnchor:v69 relation:1 constant:0.0 priority:v70];
    v157[1] = v71;
    v72 = [NSArray arrayWithObjects:v157 count:2];
    [v64 setCollisionConstraints:v72 forOverlay:self];
  }

  v73 = [(UIStackView *)self->_accessoryStackView arrangedSubviews];
  v74 = [v73 isEqualToArray:v147];

  if (v74)
  {
    log = sub_10008DF8C();
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
    {
      v142 = [(CarAccessoriesOverlay *)self host];
      v140 = [v142 overlayContentView];
      v136 = [v140 sceneIdentifierForLogging];
      v75 = v147;
      if (v75)
      {
        v138 = v75;
        if ([v75 count])
        {
          v76 = [NSMutableArray arrayWithCapacity:[v138 count]];
          v155 = 0u;
          v156 = 0u;
          v153 = 0u;
          v154 = 0u;
          v77 = v138;
          v78 = [v77 countByEnumeratingWithState:&v153 objects:location count:16];
          if (!v78)
          {
            goto LABEL_76;
          }

          v79 = *v154;
          while (1)
          {
            v80 = 0;
            do
            {
              if (*v154 != v79)
              {
                objc_enumerationMutation(v77);
              }

              v81 = *(*(&v153 + 1) + 8 * v80);
              if (v81)
              {
                v82 = objc_opt_class();
                v83 = NSStringFromClass(v82);
                if ((objc_opt_respondsToSelector() & 1) == 0)
                {
                  goto LABEL_69;
                }

                v84 = [v81 performSelector:"accessibilityIdentifier"];
                v85 = v84;
                if (v84 && ![v84 isEqualToString:v83])
                {
                  v86 = [NSString stringWithFormat:@"%@<%p, %@>", v83, v81, v85];
                }

                else
                {

LABEL_69:
                  v86 = [NSString stringWithFormat:@"%@<%p>", v83, v81];
                }

                goto LABEL_72;
              }

              v86 = @"<nil>";
LABEL_72:

              [v76 addObject:v86];
              v80 = v80 + 1;
            }

            while (v78 != v80);
            v87 = [v77 countByEnumeratingWithState:&v153 objects:location count:16];
            v78 = v87;
            if (!v87)
            {
LABEL_76:

              v88 = [v77 componentsJoinedByString:@", "];
              v89 = [NSString stringWithFormat:@"<%p> [%@]", v77, v88];

              goto LABEL_106;
            }
          }
        }

        v89 = [NSString stringWithFormat:@"<%p> (empty)", v138];
LABEL_106:
        v75 = v138;
      }

      else
      {
        v89 = @"<nil>";
      }

      v111 = v75;

      *location = 134349570;
      *&location[4] = self;
      v159 = 2112;
      v160 = v136;
      v161 = 2112;
      *v162 = v89;
      _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "[%{public}p] [%@] Will not reload accessories, nothing has changed: %@", location, 0x20u);
    }

    goto LABEL_142;
  }

  v90 = [v147 count];
  v91 = sub_10008DF8C();
  v92 = os_log_type_enabled(v91, OS_LOG_TYPE_DEBUG);
  if (v90)
  {
    if (v92)
    {
      v137 = v91;
      v143 = [(CarAccessoriesOverlay *)self host];
      v141 = [v143 overlayContentView];
      v139 = [v141 sceneIdentifierForLogging];
      v93 = [(UIStackView *)self->_accessoryStackView arrangedSubviews];
      loga = v93;
      if (v93)
      {
        if ([v93 count])
        {
          v94 = [NSMutableArray arrayWithCapacity:[loga count]];
          v155 = 0u;
          v156 = 0u;
          v153 = 0u;
          v154 = 0u;
          v95 = loga;
          v96 = [v95 countByEnumeratingWithState:&v153 objects:location count:16];
          if (!v96)
          {
            goto LABEL_98;
          }

          v97 = *v154;
          while (1)
          {
            v98 = 0;
            do
            {
              if (*v154 != v97)
              {
                objc_enumerationMutation(v95);
              }

              v99 = *(*(&v153 + 1) + 8 * v98);
              if (v99)
              {
                v100 = objc_opt_class();
                v101 = NSStringFromClass(v100);
                if ((objc_opt_respondsToSelector() & 1) == 0)
                {
                  goto LABEL_91;
                }

                v102 = [v99 performSelector:"accessibilityIdentifier"];
                v103 = v102;
                if (v102 && ![v102 isEqualToString:v101])
                {
                  v104 = [NSString stringWithFormat:@"%@<%p, %@>", v101, v99, v103];
                }

                else
                {

LABEL_91:
                  v104 = [NSString stringWithFormat:@"%@<%p>", v101, v99];
                }

                goto LABEL_94;
              }

              v104 = @"<nil>";
LABEL_94:

              [v94 addObject:v104];
              v98 = v98 + 1;
            }

            while (v96 != v98);
            v105 = [v95 countByEnumeratingWithState:&v153 objects:location count:16];
            v96 = v105;
            if (!v105)
            {
LABEL_98:

              v106 = [v95 componentsJoinedByString:@", "];
              v107 = [NSString stringWithFormat:@"<%p> [%@]", v95, v106];

              goto LABEL_116;
            }
          }
        }

        v107 = [NSString stringWithFormat:@"<%p> (empty)", loga];
LABEL_116:
        v93 = loga;
      }

      else
      {
        v107 = @"<nil>";
      }

      v135 = v107;
      v115 = v147;
      if (v115)
      {
        v134 = v115;
        if ([v115 count])
        {
          v116 = [NSMutableArray arrayWithCapacity:[v134 count]];
          v155 = 0u;
          v156 = 0u;
          v153 = 0u;
          v154 = 0u;
          v117 = v134;
          v118 = [v117 countByEnumeratingWithState:&v153 objects:location count:16];
          if (!v118)
          {
            goto LABEL_136;
          }

          v119 = *v154;
          while (1)
          {
            v120 = 0;
            do
            {
              if (*v154 != v119)
              {
                objc_enumerationMutation(v117);
              }

              v121 = *(*(&v153 + 1) + 8 * v120);
              if (v121)
              {
                v122 = objc_opt_class();
                v123 = NSStringFromClass(v122);
                if ((objc_opt_respondsToSelector() & 1) == 0)
                {
                  goto LABEL_129;
                }

                v124 = [v121 performSelector:"accessibilityIdentifier"];
                v125 = v124;
                if (v124 && ![v124 isEqualToString:v123])
                {
                  v126 = [NSString stringWithFormat:@"%@<%p, %@>", v123, v121, v125];
                }

                else
                {

LABEL_129:
                  v126 = [NSString stringWithFormat:@"%@<%p>", v123, v121];
                }

                goto LABEL_132;
              }

              v126 = @"<nil>";
LABEL_132:

              [v116 addObject:v126];
              v120 = v120 + 1;
            }

            while (v118 != v120);
            v127 = [v117 countByEnumeratingWithState:&v153 objects:location count:16];
            v118 = v127;
            if (!v127)
            {
LABEL_136:

              v128 = [v117 componentsJoinedByString:@", "];
              v129 = [NSString stringWithFormat:@"<%p> [%@]", v117, v128];

              goto LABEL_139;
            }
          }
        }

        v129 = [NSString stringWithFormat:@"<%p> (empty)", v134];
LABEL_139:
        v115 = v134;
      }

      else
      {
        v129 = @"<nil>";
      }

      v130 = v115;

      *location = 134349826;
      *&location[4] = self;
      v159 = 2112;
      v160 = v139;
      v161 = 2112;
      *v162 = v135;
      *&v162[8] = 2112;
      *&v162[10] = v129;
      _os_log_impl(&_mh_execute_header, v137, OS_LOG_TYPE_DEBUG, "[%{public}p] [%@] Will update accessories (%@ => %@)", location, 0x2Au);

      v91 = v137;
    }

    [(UIStackView *)self->_accessoryStackView _maps_setArrangedSubviews:v147];
    log = [(CarAccessoriesOverlay *)self host];
    [log setCollisionConstraintsEnabled:[(CarAccessoriesOverlay *)self isHidden]^ 1 forOverlay:self];
LABEL_142:

    goto LABEL_143;
  }

  if (v92)
  {
    v108 = [(CarAccessoriesOverlay *)self host];
    v109 = [v108 overlayContentView];
    v110 = [v109 sceneIdentifierForLogging];
    *location = 134349314;
    *&location[4] = self;
    v159 = 2112;
    v160 = v110;
    _os_log_impl(&_mh_execute_header, v91, OS_LOG_TYPE_DEBUG, "[%{public}p] [%@] Will remove all accessories", location, 0x16u);
  }

  [(UIStackView *)self->_accessoryStackView _maps_setArrangedSubviews:0];
  logb = [(CarAccessoriesOverlay *)self host];
  [logb setCollisionConstraintsEnabled:0 forOverlay:self];

LABEL_143:
}

- (void)setShowSpeedSign:(BOOL)a3
{
  if (self->_showSpeedSign != a3)
  {
    v3 = a3;
    v5 = sub_10008DF8C();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = [(CarAccessoriesOverlay *)self host];
      v7 = [v6 overlayContentView];
      v8 = [v7 sceneIdentifierForLogging];
      showSpeedSign = self->_showSpeedSign;
      v10 = 134349826;
      v11 = self;
      v12 = 2112;
      v13 = v8;
      v14 = 1024;
      v15 = showSpeedSign;
      v16 = 1024;
      v17 = v3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}p] [%@] Updating showSpeedSign %d -> %d", &v10, 0x22u);
    }

    self->_showSpeedSign = v3;
  }
}

- (void)setContentView:(id)a3 layoutGuide:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(UIStackView *)self->_accessoryStackView superview];
  if (v8 != v6)
  {
    [(UIStackView *)self->_accessoryStackView removeFromSuperview];
    accessoryStackView = self->_accessoryStackView;
    self->_accessoryStackView = 0;

    if (v6)
    {
      v10 = sub_10008DF8C();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        v11 = [(CarAccessoriesOverlay *)self host];
        v12 = [v11 overlayContentView];
        v13 = [v12 sceneIdentifierForLogging];
        *buf = 134349314;
        v50 = self;
        v51 = 2112;
        v52 = v13;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "[%{public}p] [%@] Will create new accessory container view", buf, 0x16u);
      }

      v14 = [[UIStackView alloc] initWithArrangedSubviews:&__NSArray0__struct];
      v15 = self->_accessoryStackView;
      self->_accessoryStackView = v14;

      [(UIStackView *)self->_accessoryStackView setAccessibilityIdentifier:@"CarAccessoryOverlayStackView"];
      [(UIStackView *)self->_accessoryStackView setTranslatesAutoresizingMaskIntoConstraints:0];
      [(UIStackView *)self->_accessoryStackView setSpacing:8.0];
      [(UIStackView *)self->_accessoryStackView setAlpha:0.0];
      v16 = self->_accessoryStackView;
      v17 = [(UIStackView *)v16 heightAnchor];
      LODWORD(v18) = 1112014848;
      v19 = [v17 constraintEqualToConstant:0.0 priority:v18];
      v48 = v19;
      v20 = [NSArray arrayWithObjects:&v48 count:1];
      [(UIStackView *)v16 addConstraints:v20];

      LODWORD(v21) = 1148846080;
      [(UIStackView *)self->_accessoryStackView setContentCompressionResistancePriority:1 forAxis:v21];
      LODWORD(v22) = 1148846080;
      [(UIStackView *)self->_accessoryStackView setContentCompressionResistancePriority:0 forAxis:v22];
      LODWORD(v23) = 1148846080;
      [(UIStackView *)self->_accessoryStackView setContentHuggingPriority:1 forAxis:v23];
      LODWORD(v24) = 1148846080;
      [(UIStackView *)self->_accessoryStackView setContentHuggingPriority:0 forAxis:v24];
      if (!self->_disableGlass)
      {
        [(UIStackView *)self->_accessoryStackView _maps_applyGlassGroup];
      }

      [v6 addSubview:self->_accessoryStackView];
      v25 = [(UIStackView *)self->_accessoryStackView _maps_leftRHDAnchor];
      v26 = [v7 _maps_leftRHDAnchor];
      LODWORD(v27) = 1148846080;
      v28 = [v25 _maps_constraintWithRHDAnchor:v26 relation:1 constant:8.0 priority:v27];
      leadingConstraint = self->_leadingConstraint;
      self->_leadingConstraint = v28;

      v30 = [(UIStackView *)self->_accessoryStackView _maps_rightRHDAnchor];
      v31 = [v7 _maps_rightRHDAnchor];
      LODWORD(v32) = 1148846080;
      v33 = [v30 _maps_constraintWithRHDAnchor:v31 relation:0 constant:-8.0 priority:v32];
      trailingConstraint = self->_trailingConstraint;
      self->_trailingConstraint = v33;

      v35 = [(UIStackView *)self->_accessoryStackView topAnchor];
      v36 = [v7 topAnchor];
      v37 = [v35 constraintEqualToAnchor:v36 constant:8.0];
      v38 = self->_leadingConstraint;
      v39 = self->_trailingConstraint;
      v47[0] = v37;
      v47[1] = v38;
      v47[2] = v39;
      v40 = [NSArray arrayWithObjects:v47 count:3];
      [NSLayoutConstraint activateConstraints:v40];

      [(CarAccessoriesOverlay *)self reloadAnimated:0];
    }

    else
    {
      speedSignView = self->_speedSignView;
      self->_speedSignView = 0;

      if (self->_speedSignObserver)
      {
        v42 = +[NSNotificationCenter defaultCenter];
        [v42 removeObserver:self->_speedSignObserver];

        speedSignObserver = self->_speedSignObserver;
        self->_speedSignObserver = 0;
      }

      headingIndicator = self->_headingIndicator;
      self->_headingIndicator = 0;

      if (self->_headingIndicatorObserver)
      {
        v45 = +[NSNotificationCenter defaultCenter];
        [v45 removeObserver:self->_headingIndicatorObserver];

        headingIndicatorObserver = self->_headingIndicatorObserver;
        self->_headingIndicatorObserver = 0;
      }
    }
  }
}

- (void)setHost:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_host);

  if (WeakRetained != v4)
  {
    objc_storeWeak(&self->_host, v4);
    if (v4)
    {
      v6 = [v4 containingViewController];
      v7 = [v6 _maps_carSceneDelegate];

      v8 = [MapsLightLevelController alloc];
      v9 = [v7 window];
      v10 = [v9 windowScene];
      v11 = [(MapsLightLevelController *)v8 initWithWindowScene:v10];
      lightLevelController = self->_lightLevelController;
      self->_lightLevelController = v11;

      [(MapsLightLevelController *)self->_lightLevelController addObserver:self];
      v13 = [v4 overlayContentView];
      v14 = [v4 layoutGuideForOverlay:self];
      [(CarAccessoriesOverlay *)self setContentView:v13 layoutGuide:v14];

      accessoryStackView = self->_accessoryStackView;
      if (accessoryStackView)
      {
        v16 = [(UIStackView *)accessoryStackView _maps_leftRHDAnchor];
        v17 = [v4 mapInsetsLayoutGuide];
        v18 = [v17 _maps_rightRHDAnchor];
        LODWORD(v19) = 1148846080;
        v20 = [v16 _maps_constraintWithRHDAnchor:v18 relation:1 constant:8.0 priority:v19];
        v30 = v20;
        v21 = [NSArray arrayWithObjects:&v30 count:1];
        [v4 setMapInsetsConstraints:v21 forOverlay:self];

        v22 = [(UIStackView *)self->_accessoryStackView _maps_leftRHDAnchor];
        v23 = [v4 viewportLayoutGuide];
        v24 = [v23 _maps_rightRHDAnchor];
        LODWORD(v25) = 1148846080;
        v26 = [v22 _maps_constraintWithRHDAnchor:v24 relation:1 constant:8.0 priority:v25];
        v29 = v26;
        v27 = [NSArray arrayWithObjects:&v29 count:1];
        [v4 setViewportConstraints:v27 forOverlay:self];
      }

      else
      {
        v22 = sub_10008DF8C();
        if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
LABEL_9:

          goto LABEL_10;
        }

        v23 = [(CarAccessoriesOverlay *)self host];
        v24 = [v23 overlayContentView];
        v26 = [v24 sceneIdentifierForLogging];
        *buf = 134349314;
        v32 = self;
        v33 = 2112;
        v34 = v26;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "[%{public}p] [%@] Failed to set up constraints for accessory stackView as it was nil at the time.", buf, 0x16u);
      }

      goto LABEL_9;
    }

    [(MapsLightLevelController *)self->_lightLevelController removeObserver:self];
    v28 = self->_lightLevelController;
    self->_lightLevelController = 0;

    [(CarAccessoriesOverlay *)self setContentView:0 layoutGuide:0];
  }

LABEL_10:
}

- (CarAccessoriesOverlay)initWithCarSceneType:(int64_t)a3
{
  v7.receiver = self;
  v7.super_class = CarAccessoriesOverlay;
  v4 = [(CarAccessoriesOverlay *)&v7 init];
  if (v4)
  {
    v5 = sub_10008DF8C();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 134349056;
      v9 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}p] Initializing", buf, 0xCu);
    }

    v4->_sceneType = a3;
    v4->_userPermitsHeadingIndicator = GEOConfigGetBOOL();
    v4->_userPermitsSpeedSign = GEOConfigGetBOOL();
    _GEOConfigAddDelegateListenerForKey();
    _GEOConfigAddDelegateListenerForKey();

    v4->_disableGlass = GEOConfigGetBOOL();
  }

  return v4;
}

- (void)dealloc
{
  v3 = sub_10008DF8C();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 134349056;
    v6 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{public}p] Deallocating", buf, 0xCu);
  }

  [(MapsLightLevelController *)self->_lightLevelController removeObserver:self];
  GEOConfigRemoveDelegateListenerForAllKeys();
  [(CarAccessoriesOverlay *)self setContentView:0 layoutGuide:0];
  v4.receiver = self;
  v4.super_class = CarAccessoriesOverlay;
  [(CarAccessoriesOverlay *)&v4 dealloc];
}

@end