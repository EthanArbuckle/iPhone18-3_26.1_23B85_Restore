@interface CarGuidanceCardViewController
- ($FEAE32A1819615878361D0F810751286)cornerMaskForCarCardLayout:(SEL)a3;
- (CGSize)availableCardSize;
- (CGSize)availableSize;
- (CarArrivedGuidanceSign)arrivalOverlaySign;
- (CarGuidanceCardInteractionDelegate)interactionDelegate;
- (CarGuidanceCardSizeProviding)guidanceCardSizeProvider;
- (CarGuidanceCardViewController)initWithDestination:(unint64_t)a3 presentationType:(unint64_t)a4 guidanceCardSizeProvider:(id)a5 interactionDelegate:(id)a6;
- (CarLoadingGuidanceSign)loadingOverlaySign;
- (CarNavigationGuidanceSign)fullGuidanceSign;
- (CarNavigationGuidanceSign)miniGuidanceSign;
- (CarReroutingGuidanceSign)reroutingOverlaySign;
- (NSUUID)proceedToRouteSignID;
- (id)currentLaneGuidanceId;
- (unint64_t)maneuverViewLayoutType;
- (void)_guidanceWasUpdated;
- (void)_reload;
- (void)_scheduleReloadAnimated:(BOOL)a3;
- (void)_showRecalculatingWithDataConnectionFailedMessage:(BOOL)a3;
- (void)_swapDisplayedSignIfNeeded;
- (void)_updateCardState;
- (void)_updateSignLayout;
- (void)dealloc;
- (void)didReroute;
- (void)dynamicBlurViewDidChangeBlurMode:(int64_t)a3;
- (void)handleUserSelectionAtPoint:(CGPoint)a3;
- (void)hideJunctionView;
- (void)hideLaneGuidance;
- (void)hideRecalculating;
- (void)hideSecondaryManeuver;
- (void)presentJunctionViewInfo:(id)a3;
- (void)setArrivalState:(unint64_t)a3;
- (void)setAvailableCardSize:(CGSize)a3;
- (void)setCardState:(unint64_t)a3 animated:(BOOL)a4;
- (void)setCurrentSign:(id)a3;
- (void)setDestinationDisplayName:(id)a3;
- (void)setHasGuidance:(BOOL)a3;
- (void)setIsRerouting:(BOOL)a3;
- (void)setJunctionViewInfo:(id)a3;
- (void)setLaneGuidanceInfo:(id)a3;
- (void)setNavigationGuidanceSignStyle:(int64_t)a3 userInitiated:(BOOL)a4;
- (void)setPrimaryGuidance:(id)a3;
- (void)setSecondaryGuidance:(id)a3;
- (void)setTimeToManeuver:(double)a3 distanceToManeuver:(double)a4 distanceText:(id)a5 forStep:(id)a6 atStepIndex:(unint64_t)a7;
- (void)showJunctionView:(id)a3;
- (void)showLaneGuidance:(id)a3;
- (void)showManeuverSign:(id)a3 maneuverStepIndex:(unint64_t)a4;
- (void)showNoGuidance;
- (void)showProceedingToRouteDistance:(double)a3 displayString:(id)a4 forStep:(id)a5;
- (void)showRecalculating;
- (void)showRecalculationFailed;
- (void)showSecondaryManeuverSign:(id)a3;
- (void)showTemporarilyHiddenJunctionViewAnimated:(BOOL)a3;
- (void)temporarilyHideJunctionViewForSeconds:(double)a3 animated:(BOOL)a4;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation CarGuidanceCardViewController

- (void)_reload
{
  self->_reloading = 1;
  if (self->_reloadAnimated)
  {
    v3 = [(CarGuidanceCardViewController *)self isViewLoaded];
  }

  else
  {
    v3 = 0;
  }

  [(NSTimer *)self->_reloadTimer invalidate];
  reloadTimer = self->_reloadTimer;
  self->_reloadTimer = 0;

  v5 = [GroupAnimation animationForAnimatedFlag:v3];
  [v5 setDuration:0.25];
  [v5 setOptions:6];
  v6 = [(CarGuidanceCardViewController *)self currentSign];
  [v6 updateWithGroupAnimation:v5];

  if (v3)
  {
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10007E9E8;
    v9[3] = &unk_101661B18;
    v9[4] = self;
    [v5 addAnimations:v9 completion:0];
  }

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10007E280;
  v7[3] = &unk_1016574C0;
  v7[4] = self;
  v8 = v3;
  [v5 addAnimations:0 completion:v7];
  [v5 runWithCurrentOptions];
}

- (CarNavigationGuidanceSign)fullGuidanceSign
{
  fullGuidanceSign = self->_fullGuidanceSign;
  if (!fullGuidanceSign)
  {
    v4 = [[CarNavigationGuidanceSign alloc] initWithDestination:[(CarGuidanceCardViewController *)self destination]];
    v5 = self->_fullGuidanceSign;
    self->_fullGuidanceSign = v4;

    [(CarNavigationGuidanceSign *)self->_fullGuidanceSign setSizeProvider:self];
    [(CarNavigationGuidanceSign *)self->_fullGuidanceSign setTranslatesAutoresizingMaskIntoConstraints:0];
    [(CarNavigationGuidanceSign *)self->_fullGuidanceSign setSignStyle:0];
    fullGuidanceSign = self->_fullGuidanceSign;
  }

  return fullGuidanceSign;
}

- (CarNavigationGuidanceSign)miniGuidanceSign
{
  miniGuidanceSign = self->_miniGuidanceSign;
  if (!miniGuidanceSign)
  {
    v4 = [[CarNavigationGuidanceSign alloc] initWithDestination:[(CarGuidanceCardViewController *)self destination]];
    v5 = self->_miniGuidanceSign;
    self->_miniGuidanceSign = v4;

    [(CarNavigationGuidanceSign *)self->_miniGuidanceSign setSizeProvider:self];
    [(CarNavigationGuidanceSign *)self->_miniGuidanceSign setTranslatesAutoresizingMaskIntoConstraints:0];
    [(CarNavigationGuidanceSign *)self->_miniGuidanceSign setSignStyle:1];
    miniGuidanceSign = self->_miniGuidanceSign;
  }

  return miniGuidanceSign;
}

- (void)_guidanceWasUpdated
{
  v4 = [(CarGuidanceCardViewController *)self primaryGuidance];
  if (v4)
  {
    [(CarGuidanceCardViewController *)self setHasGuidance:1];
  }

  else
  {
    v3 = [(CarGuidanceCardViewController *)self laneGuidanceInfo];
    [(CarGuidanceCardViewController *)self setHasGuidance:v3 != 0];
  }
}

- (CGSize)availableCardSize
{
  width = self->_availableCardSize.width;
  height = self->_availableCardSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = CarGuidanceCardViewController;
  [(CarGuidanceCardViewController *)&v3 viewDidLayoutSubviews];
  [(CarGuidanceCardViewController *)self _updateSignLayout];
}

- (void)_updateSignLayout
{
  v3 = [(CarGuidanceCardViewController *)self currentSign];
  [v3 setNeedsLayout];

  v4 = [(CarGuidanceCardViewController *)self currentSign];
  [v4 layoutIfNeeded];
}

- (unint64_t)maneuverViewLayoutType
{
  v3 = [(CarGuidanceCardViewController *)self destination];
  if (v3 - 2 < 3)
  {
    v4 = [(CarGuidanceCardViewController *)self guidanceCardSizeProvider];

    if (!v4)
    {
      v13 = sub_10006D178();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v16 = 136315906;
        v17 = "[CarGuidanceCardViewController maneuverViewLayoutType]";
        v18 = 2080;
        v19 = "CarGuidanceCardViewController.m";
        v20 = 1024;
        v21 = 879;
        v22 = 2080;
        v23 = "self.guidanceCardSizeProvider";
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s)", &v16, 0x26u);
      }

      if (sub_100E03634())
      {
        v14 = sub_10006D178();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          v15 = +[NSThread callStackSymbols];
          v16 = 138412290;
          v17 = v15;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%@", &v16, 0xCu);
        }
      }
    }

    v5 = [(CarGuidanceCardViewController *)self guidanceCardSizeProvider];
    v6 = [v5 maneuverViewLayoutType];
LABEL_4:

    return v6;
  }

  if (v3 <= 1)
  {
    v7 = [(CarGuidanceCardViewController *)self junctionViewInfo];

    if (v7)
    {
      return 2;
    }

    v5 = +[CarDisplayController sharedInstance];
    v12 = [v5 window];
    [v12 bounds];
    v6 = CGRectGetWidth(v24) * 0.449999988 >= 180.0;

    goto LABEL_4;
  }

  v8 = sub_10006D178();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v16 = 136315650;
    v17 = "[CarGuidanceCardViewController maneuverViewLayoutType]";
    v18 = 2080;
    v19 = "CarGuidanceCardViewController.m";
    v20 = 1024;
    v21 = 884;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion reached unexpectedly!", &v16, 0x1Cu);
  }

  if (sub_100E03634())
  {
    v9 = sub_10006D178();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = +[NSThread callStackSymbols];
      v16 = 138412290;
      v17 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%@", &v16, 0xCu);
    }
  }

  return 1;
}

- (CGSize)availableSize
{
  v3 = [(CarGuidanceCardViewController *)self destination];
  if (v3 - 2 >= 3)
  {
    if (v3 > 1)
    {
      v12 = sub_10006D178();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v20 = 136315650;
        v21 = "[CarGuidanceCardViewController availableSize]";
        v22 = 2080;
        v23 = "CarGuidanceCardViewController.m";
        v24 = 1024;
        v25 = 860;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion reached unexpectedly!", &v20, 0x1Cu);
      }

      if (sub_100E03634())
      {
        v13 = sub_10006D178();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          v14 = +[NSThread callStackSymbols];
          v20 = 138412290;
          v21 = v14;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%@", &v20, 0xCu);
        }
      }

      width = CGSizeZero.width;
      height = CGSizeZero.height;
    }

    else
    {
      [(CarGuidanceCardViewController *)self availableCardSize];
      width = v10;
      height = v11;
    }
  }

  else
  {
    v4 = [(CarGuidanceCardViewController *)self guidanceCardSizeProvider];

    if (!v4)
    {
      v17 = sub_10006D178();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v20 = 136315906;
        v21 = "[CarGuidanceCardViewController availableSize]";
        v22 = 2080;
        v23 = "CarGuidanceCardViewController.m";
        v24 = 1024;
        v25 = 856;
        v26 = 2080;
        v27 = "self.guidanceCardSizeProvider";
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s)", &v20, 0x26u);
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

    v5 = [(CarGuidanceCardViewController *)self guidanceCardSizeProvider];
    [v5 availableSize];
    width = v6;
    height = v8;
  }

  v15 = width;
  v16 = height;
  result.height = v16;
  result.width = v15;
  return result;
}

- (CarGuidanceCardInteractionDelegate)interactionDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_interactionDelegate);

  return WeakRetained;
}

- (CarGuidanceCardSizeProviding)guidanceCardSizeProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_guidanceCardSizeProvider);

  return WeakRetained;
}

- (void)setAvailableCardSize:(CGSize)a3
{
  if (a3.width != self->_availableCardSize.width || a3.height != self->_availableCardSize.height)
  {
    self->_availableCardSize = a3;
    [(CarGuidanceCardViewController *)self _updateSignLayout];
  }
}

- (void)dynamicBlurViewDidChangeBlurMode:(int64_t)a3
{
  v5 = [(CarGuidanceCardViewController *)self fullGuidanceSign];
  [v5 setBlurMode:a3];

  v6 = [(CarGuidanceCardViewController *)self miniGuidanceSign];
  [v6 setBlurMode:a3];
}

- ($FEAE32A1819615878361D0F810751286)cornerMaskForCarCardLayout:(SEL)a3
{
  v6 = [(CarGuidanceCardViewController *)self view];
  [v6 _car_dynamicPointScaleValue];
  v8 = v7;

  presentationType = self->_presentationType;
  if (presentationType - 1 >= 2)
  {
    v10 = 24.0;
    if (!presentationType && self->_destination - 3 < 2)
    {
      v10 = v8 * 24.0;
    }
  }

  else
  {
    v10 = 20.0;
  }

  retstr->var0 = 15;
  retstr->var1 = v10;
  result = kCACornerCurveContinuous;
  retstr->var2 = result;
  retstr->var3 = 0;
  retstr->var4 = 0;
  return result;
}

- (void)showProceedingToRouteDistance:(double)a3 displayString:(id)a4 forStep:(id)a5
{
  v8 = a4;
  v9 = a5;
  if ([(CarGuidanceCardViewController *)self cardState]!= 4)
  {
    v10 = [v9 contentsForContext:1];
    v11 = [v10 stringForDistance:a3];
    if (v8)
    {
      v12 = [v8 mkServerFormattedString];
      v30 = v12;
      v13 = [NSArray arrayWithObjects:&v30 count:1];
    }

    else
    {
      v13 = 0;
    }

    v14 = [(CarGuidanceCardViewController *)self primaryGuidance];
    v15 = [v14 maneuverArtwork];

    if (!v15)
    {
      v16 = [GuidanceManeuverArtwork alloc];
      v17 = [v9 artworkOverride];
      v15 = [(GuidanceManeuverArtwork *)v16 initWithManeuver:17 junction:0 drivingSide:1 artworkDataSource:v17];
    }

    v18 = [NavSignManeuverGuidanceInfo alloc];
    v19 = [(CarGuidanceCardViewController *)self proceedToRouteSignID];
    if (v11)
    {
      [v11 mkServerFormattedString];
      v29 = v28 = v8;
      v20 = v9;
      v21 = v11;
      v22 = v10;
      v23 = v29;
      v24 = [NSArray arrayWithObjects:&v29 count:1];
      v25 = [(NavSignManeuverGuidanceInfo *)v18 initWithSignID:v19 maneuverArtwork:v15 majorTextAlternatives:v24 minorTextAlternatives:v13 shieldInfo:0];

      v10 = v22;
      v11 = v21;
      v9 = v20;
      v8 = v28;
    }

    else
    {
      v25 = [(NavSignManeuverGuidanceInfo *)v18 initWithSignID:v19 maneuverArtwork:v15 majorTextAlternatives:0 minorTextAlternatives:v13 shieldInfo:0];
    }

    v26 = [(CarGuidanceCardViewController *)self primaryGuidance];
    v27 = [NavSignManeuverGuidanceInfo updatedGuidanceWithPreviousGuidance:v26 currentGuidance:v25];
    [(CarGuidanceCardViewController *)self setPrimaryGuidance:v27];

    [(CarGuidanceCardViewController *)self _scheduleReloadAnimated:1];
  }
}

- (void)setTimeToManeuver:(double)a3 distanceToManeuver:(double)a4 distanceText:(id)a5 forStep:(id)a6 atStepIndex:(unint64_t)a7
{
  v8 = a5;
  v9 = [(CarGuidanceCardViewController *)self cardState];
  if (v8 && v9 != 4)
  {
    v16 = v8;
    v10 = [NSArray arrayWithObjects:&v16 count:1];
    v11 = [(CarGuidanceCardViewController *)self primaryGuidance];
    [v11 setMajorTextAlternatives:v10];

    v15 = v8;
    v12 = [NSArray arrayWithObjects:&v15 count:1];
    v13 = [(CarGuidanceCardViewController *)self fullGuidanceSign];
    v14 = [v13 primaryGuidance];
    [v14 setMajorTextAlternatives:v12];

    [(CarGuidanceCardViewController *)self _scheduleReloadAnimated:1];
  }
}

- (void)_showRecalculatingWithDataConnectionFailedMessage:(BOOL)a3
{
  v3 = a3;
  v5 = [(CarGuidanceCardViewController *)self cardState]== 1;
  v6 = [(CarGuidanceCardViewController *)self reroutingOverlaySign];
  [v6 setShowMessage:v3 animated:v5];
}

- (void)showRecalculationFailed
{
  v3 = sub_1000811E8();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = self;
    if (!v4)
    {
      v9 = @"<nil>";
      goto LABEL_10;
    }

    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    if (objc_opt_respondsToSelector())
    {
      v7 = [(CarGuidanceCardViewController *)v4 performSelector:"accessibilityIdentifier"];
      v8 = v7;
      if (v7 && ![v7 isEqualToString:v6])
      {
        v9 = [NSString stringWithFormat:@"%@<%p, %@>", v6, v4, v8];

        goto LABEL_8;
      }
    }

    v9 = [NSString stringWithFormat:@"%@<%p>", v6, v4];
LABEL_8:

LABEL_10:
    *buf = 138543362;
    v11 = v9;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{public}@] showRecalculationFailed", buf, 0xCu);
  }

  [(CarGuidanceCardViewController *)self showNoGuidance];
  [(CarGuidanceCardViewController *)self _showRecalculatingWithDataConnectionFailedMessage:1];
}

- (void)didReroute
{
  v3 = sub_1000811E8();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = self;
    if (!v4)
    {
      v9 = @"<nil>";
      goto LABEL_10;
    }

    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    if (objc_opt_respondsToSelector())
    {
      v7 = [(CarGuidanceCardViewController *)v4 performSelector:"accessibilityIdentifier"];
      v8 = v7;
      if (v7 && ![v7 isEqualToString:v6])
      {
        v9 = [NSString stringWithFormat:@"%@<%p, %@>", v6, v4, v8];

        goto LABEL_8;
      }
    }

    v9 = [NSString stringWithFormat:@"%@<%p>", v6, v4];
LABEL_8:

LABEL_10:
    *buf = 138543362;
    v11 = v9;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{public}@] didReroute", buf, 0xCu);
  }

  [(CarGuidanceCardViewController *)self setIsRerouting:0];
}

- (void)hideRecalculating
{
  v3 = sub_1000811E8();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = self;
    if (!v4)
    {
      v9 = @"<nil>";
      goto LABEL_10;
    }

    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    if (objc_opt_respondsToSelector())
    {
      v7 = [(CarGuidanceCardViewController *)v4 performSelector:"accessibilityIdentifier"];
      v8 = v7;
      if (v7 && ![v7 isEqualToString:v6])
      {
        v9 = [NSString stringWithFormat:@"%@<%p, %@>", v6, v4, v8];

        goto LABEL_8;
      }
    }

    v9 = [NSString stringWithFormat:@"%@<%p>", v6, v4];
LABEL_8:

LABEL_10:
    *buf = 138543362;
    v11 = v9;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{public}@] hideRecalculating", buf, 0xCu);
  }

  [(CarGuidanceCardViewController *)self setIsRerouting:0];
}

- (void)showRecalculating
{
  v3 = sub_1000811E8();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = self;
    if (!v4)
    {
      v9 = @"<nil>";
      goto LABEL_10;
    }

    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    if (objc_opt_respondsToSelector())
    {
      v7 = [(CarGuidanceCardViewController *)v4 performSelector:"accessibilityIdentifier"];
      v8 = v7;
      if (v7 && ![v7 isEqualToString:v6])
      {
        v9 = [NSString stringWithFormat:@"%@<%p, %@>", v6, v4, v8];

        goto LABEL_8;
      }
    }

    v9 = [NSString stringWithFormat:@"%@<%p>", v6, v4];
LABEL_8:

LABEL_10:
    *buf = 138543362;
    v24 = v9;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{public}@] showRecalculating", buf, 0xCu);
  }

  [(CarGuidanceCardViewController *)self setIsRerouting:1];
  if (!self->_previousPrimaryGuidance)
  {
    v10 = sub_1000811E8();
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
LABEL_19:

      v17 = [(CarGuidanceCardViewController *)self primaryGuidance];
      previousPrimaryGuidance = self->_previousPrimaryGuidance;
      self->_previousPrimaryGuidance = v17;

      v19 = [(CarGuidanceCardViewController *)self secondaryGuidance];
      previousSecondaryGuidance = self->_previousSecondaryGuidance;
      self->_previousSecondaryGuidance = v19;

      v21 = [(CarGuidanceCardViewController *)self laneGuidanceInfo];
      previousLaneInfo = self->_previousLaneInfo;
      self->_previousLaneInfo = v21;

      goto LABEL_20;
    }

    v11 = self;
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    if (objc_opt_respondsToSelector())
    {
      v14 = [(CarGuidanceCardViewController *)v11 performSelector:"accessibilityIdentifier"];
      v15 = v14;
      if (v14 && ![v14 isEqualToString:v13])
      {
        v16 = [NSString stringWithFormat:@"%@<%p, %@>", v13, v11, v15];

        goto LABEL_18;
      }
    }

    v16 = [NSString stringWithFormat:@"%@<%p>", v13, v11];
LABEL_18:

    *buf = 138543362;
    v24 = v16;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "[%{public}@] Saving current sign guidance", buf, 0xCu);

    goto LABEL_19;
  }

LABEL_20:
  [(CarGuidanceCardViewController *)self showNoGuidance];
  [(CarGuidanceCardViewController *)self _showRecalculatingWithDataConnectionFailedMessage:0];
}

- (void)setIsRerouting:(BOOL)a3
{
  if (self->_isRerouting != a3)
  {
    v3 = a3;
    if (!a3 || [(CarGuidanceCardViewController *)self arrivalState]== 1)
    {
      self->_isRerouting = v3;
      v5 = sub_1000811E8();
      if (!os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
LABEL_13:

        [(CarGuidanceCardViewController *)self _updateCardState];
        return;
      }

      v6 = self;
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      if (objc_opt_respondsToSelector())
      {
        v9 = [(CarGuidanceCardViewController *)v6 performSelector:"accessibilityIdentifier"];
        v10 = v9;
        if (v9 && ![v9 isEqualToString:v8])
        {
          v11 = [NSString stringWithFormat:@"%@<%p, %@>", v8, v6, v10];

          goto LABEL_10;
        }
      }

      v11 = [NSString stringWithFormat:@"%@<%p>", v8, v6];
LABEL_10:

      v12 = @"NO";
      if (v3)
      {
        v12 = @"YES";
      }

      v13 = v12;
      *buf = 138543618;
      v22 = v11;
      v23 = 2112;
      v24 = v13;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}@] setIsRerouting: %@", buf, 0x16u);

      goto LABEL_13;
    }

    v14 = sub_1000811E8();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      goto LABEL_21;
    }

    v15 = self;
    v16 = objc_opt_class();
    v17 = NSStringFromClass(v16);
    if (objc_opt_respondsToSelector())
    {
      v18 = [(CarGuidanceCardViewController *)v15 performSelector:"accessibilityIdentifier"];
      v19 = v18;
      if (v18 && ![v18 isEqualToString:v17])
      {
        v20 = [NSString stringWithFormat:@"%@<%p, %@>", v17, v15, v19];

        goto LABEL_20;
      }
    }

    v20 = [NSString stringWithFormat:@"%@<%p>", v17, v15];
LABEL_20:

    *buf = 138543618;
    v22 = v20;
    v23 = 2112;
    v24 = @"YES";
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "[%{public}@] Will ignore setIsRerouting: %@, because we are in an arrival state.", buf, 0x16u);

LABEL_21:
  }
}

- (void)setDestinationDisplayName:(id)a3
{
  v4 = [a3 mkServerFormattedString];
  [(CarArrivedGuidanceSign *)self->_arrivalOverlaySign setFormattedDestination:v4];
}

- (void)setArrivalState:(unint64_t)a3
{
  if (self->_arrivalState == a3)
  {
    return;
  }

  self->_arrivalState = a3;
  v5 = sub_1000811E8();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = self;
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    if (objc_opt_respondsToSelector())
    {
      v9 = [(CarGuidanceCardViewController *)v6 performSelector:"accessibilityIdentifier"];
      v10 = v9;
      if (v9 && ![v9 isEqualToString:v8])
      {
        v11 = [NSString stringWithFormat:@"%@<%p, %@>", v8, v6, v10];

        goto LABEL_8;
      }
    }

    v11 = [NSString stringWithFormat:@"%@<%p>", v8, v6];
LABEL_8:

    if (a3 - 1 > 4)
    {
      v12 = @"Unavailable";
    }

    else
    {
      v12 = *(&off_101631088 + a3 - 1);
    }

    v13 = v12;
    *buf = 138543618;
    v15 = v11;
    v16 = 2112;
    v17 = v13;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}@] etaCardVC: updateArrivalState: %@", buf, 0x16u);
  }

  if (a3 == 5)
  {
    [(CarGuidanceCardViewController *)self showNoGuidance];
  }

  [(CarGuidanceCardViewController *)self _updateCardState];
}

- (void)showNoGuidance
{
  [(CarGuidanceCardViewController *)self setPrimaryGuidance:0];
  [(CarGuidanceCardViewController *)self setSecondaryGuidance:0];

  [(CarGuidanceCardViewController *)self setLaneGuidanceInfo:0];
}

- (void)hideJunctionView
{
  v3 = [(CarGuidanceCardViewController *)self junctionViewInfo];

  if (v3)
  {
    [(CarGuidanceCardViewController *)self setJunctionViewInfo:0];

    [(CarGuidanceCardViewController *)self _scheduleReloadAnimated:1];
  }
}

- (void)presentJunctionViewInfo:(id)a3
{
  [(CarGuidanceCardViewController *)self setJunctionViewInfo:a3];

  [(CarGuidanceCardViewController *)self _scheduleReloadAnimated:1];
}

- (void)showJunctionView:(id)a3
{
  v6 = a3;
  if (v6)
  {
    v4 = [(CarGuidanceCardViewController *)self junctionViewInfo];
    v5 = [v6 isEqual:v4];

    if ((v5 & 1) == 0)
    {
      [(CarGuidanceCardViewController *)self presentJunctionViewInfo:v6];
    }
  }
}

- (void)hideLaneGuidance
{
  v3 = [(CarGuidanceCardViewController *)self laneGuidanceInfo];

  if (v3)
  {
    [(CarGuidanceCardViewController *)self setLaneGuidanceInfo:0];

    [(CarGuidanceCardViewController *)self _scheduleReloadAnimated:1];
  }
}

- (void)showLaneGuidance:(id)a3
{
  v6 = a3;
  if (v6)
  {
    v4 = [(CarGuidanceCardViewController *)self laneGuidanceInfo];
    v5 = [v6 isEqual:v4];

    if ((v5 & 1) == 0)
    {
      [(CarGuidanceCardViewController *)self setLaneGuidanceInfo:v6];
      [(CarGuidanceCardViewController *)self _scheduleReloadAnimated:1];
    }
  }
}

- (id)currentLaneGuidanceId
{
  v2 = [(CarGuidanceCardViewController *)self laneGuidanceInfo];
  v3 = [v2 laneInfoId];

  return v3;
}

- (void)hideSecondaryManeuver
{
  v3 = [(CarGuidanceCardViewController *)self secondaryGuidance];

  if (v3)
  {
    v4 = sub_1000811E8();
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
LABEL_12:

      [(CarGuidanceCardViewController *)self setSecondaryGuidance:0];
      [(CarGuidanceCardViewController *)self _scheduleReloadAnimated:1];
      return;
    }

    v5 = self;
    if (!v5)
    {
      v10 = @"<nil>";
      goto LABEL_11;
    }

    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    if (objc_opt_respondsToSelector())
    {
      v8 = [(CarGuidanceCardViewController *)v5 performSelector:"accessibilityIdentifier"];
      v9 = v8;
      if (v8 && ![v8 isEqualToString:v7])
      {
        v10 = [NSString stringWithFormat:@"%@<%p, %@>", v7, v5, v9];

        goto LABEL_9;
      }
    }

    v10 = [NSString stringWithFormat:@"%@<%p>", v7, v5];
LABEL_9:

LABEL_11:
    v11 = [(CarGuidanceCardViewController *)v5 secondaryGuidance];
    v12 = [v11 signID];
    v13 = [v12 UUIDString];
    *buf = 138543618;
    v15 = v10;
    v16 = 2112;
    v17 = v13;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[%{public}@] Hiding secondary maneuver sign: %@", buf, 0x16u);

    goto LABEL_12;
  }
}

- (void)showSecondaryManeuverSign:(id)a3
{
  v4 = a3;
  v5 = sub_1000811E8();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = self;
    if (!v6)
    {
      v11 = @"<nil>";
      goto LABEL_10;
    }

    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    if (objc_opt_respondsToSelector())
    {
      v9 = [(CarGuidanceCardViewController *)v6 performSelector:"accessibilityIdentifier"];
      v10 = v9;
      if (v9 && ![v9 isEqualToString:v8])
      {
        v11 = [NSString stringWithFormat:@"%@<%p, %@>", v8, v6, v10];

        goto LABEL_8;
      }
    }

    v11 = [NSString stringWithFormat:@"%@<%p>", v8, v6];
LABEL_8:

LABEL_10:
    v12 = [v4 signID];
    v13 = [v12 UUIDString];
    *buf = 138543618;
    v17 = v11;
    v18 = 2112;
    v19 = v13;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}@] Showing secondary maneuver sign: %@", buf, 0x16u);
  }

  v14 = [(CarGuidanceCardViewController *)self secondaryGuidance];
  v15 = [NavSignManeuverGuidanceInfo updatedGuidanceWithPreviousGuidance:v14 currentGuidance:v4];
  [(CarGuidanceCardViewController *)self setSecondaryGuidance:v15];

  [(CarGuidanceCardViewController *)self _scheduleReloadAnimated:1];
}

- (void)showManeuverSign:(id)a3 maneuverStepIndex:(unint64_t)a4
{
  v6 = a3;
  v7 = sub_1000811E8();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = self;
    if (!v8)
    {
      v13 = @"<nil>";
      goto LABEL_10;
    }

    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    if (objc_opt_respondsToSelector())
    {
      v11 = [(CarGuidanceCardViewController *)v8 performSelector:"accessibilityIdentifier"];
      v12 = v11;
      if (v11 && ![v11 isEqualToString:v10])
      {
        v13 = [NSString stringWithFormat:@"%@<%p, %@>", v10, v8, v12];

        goto LABEL_8;
      }
    }

    v13 = [NSString stringWithFormat:@"%@<%p>", v10, v8];
LABEL_8:

LABEL_10:
    v14 = [v6 signID];
    v15 = [v14 UUIDString];
    *buf = 138543618;
    v66 = v13;
    v67 = 2112;
    v68 = *&v15;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "[%{public}@] Showing primary maneuver sign: %@", buf, 0x16u);
  }

  [PPTNotificationCenter postNotificationIfNeededWithName:@"MapsPPTGuidanceWillUpdateNotifcation" object:self userInfo:0];
  v16 = [(CarGuidanceCardViewController *)self primaryGuidance];
  if (v16)
  {

    goto LABEL_22;
  }

  v17 = [(NavSignManeuverGuidanceInfo *)self->_previousPrimaryGuidance signID];
  v18 = [v6 signID];
  v19 = [v17 isEqual:v18];

  if (v19)
  {
    v20 = sub_1000811E8();
    if (!os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
LABEL_21:

      [(CarGuidanceCardViewController *)self setPrimaryGuidance:self->_previousPrimaryGuidance];
      [(CarGuidanceCardViewController *)self setSecondaryGuidance:self->_previousSecondaryGuidance];
      [(CarGuidanceCardViewController *)self setLaneGuidanceInfo:self->_previousLaneInfo];
      goto LABEL_22;
    }

    v21 = self;
    v22 = objc_opt_class();
    v23 = NSStringFromClass(v22);
    if (objc_opt_respondsToSelector())
    {
      v24 = [(CarGuidanceCardViewController *)v21 performSelector:"accessibilityIdentifier"];
      v25 = v24;
      if (v24 && ![v24 isEqualToString:v23])
      {
        v26 = [NSString stringWithFormat:@"%@<%p, %@>", v23, v21, v25];

        goto LABEL_20;
      }
    }

    v26 = [NSString stringWithFormat:@"%@<%p>", v23, v21];
LABEL_20:

    *buf = 138543362;
    v66 = v26;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "[%{public}@] Restoring sign state", buf, 0xCu);

    goto LABEL_21;
  }

LABEL_22:
  v27 = [(CarGuidanceCardViewController *)self primaryGuidance];
  v28 = [v27 signID];

  v29 = [v6 signID];
  if (!v29)
  {
    v30 = sub_1000811E8();
    if (!os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
LABEL_33:

      goto LABEL_34;
    }

    v31 = self;
    if (!v31)
    {
      v36 = @"<nil>";
      goto LABEL_32;
    }

    v32 = objc_opt_class();
    v33 = NSStringFromClass(v32);
    if (objc_opt_respondsToSelector())
    {
      v34 = [(CarGuidanceCardViewController *)v31 performSelector:"accessibilityIdentifier"];
      v35 = v34;
      if (v34 && ![v34 isEqualToString:v33])
      {
        v36 = [NSString stringWithFormat:@"%@<%p, %@>", v33, v31, v35];

        goto LABEL_30;
      }
    }

    v36 = [NSString stringWithFormat:@"%@<%p>", v33, v31];
LABEL_30:

LABEL_32:
    *buf = 138543618;
    v66 = v36;
    v67 = 2112;
    v68 = *&v6;
    _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "[%{public}@] showManeuverSign without a UUID: %@, this shouldn't happen.", buf, 0x16u);

    goto LABEL_33;
  }

LABEL_34:
  v37 = [(CarGuidanceCardViewController *)self primaryGuidance];
  v38 = [NavSignManeuverGuidanceInfo updatedGuidanceWithPreviousGuidance:v37 currentGuidance:v6];
  [(CarGuidanceCardViewController *)self setPrimaryGuidance:v38];

  if (!v28 && v29)
  {
    v39 = sub_1000811E8();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
    {
      v40 = self;
      if (!v40)
      {
        v45 = @"<nil>";
        goto LABEL_54;
      }

      v41 = objc_opt_class();
      v42 = NSStringFromClass(v41);
      if (objc_opt_respondsToSelector())
      {
        v43 = [(CarGuidanceCardViewController *)v40 performSelector:"accessibilityIdentifier"];
        v44 = v43;
        if (v43 && ![v43 isEqualToString:v42])
        {
          v45 = [NSString stringWithFormat:@"%@<%p, %@>", v42, v40, v44];

          goto LABEL_43;
        }
      }

      v45 = [NSString stringWithFormat:@"%@<%p>", v42, v40];
LABEL_43:

LABEL_54:
      *buf = 138543362;
      v66 = v45;
      v51 = "[%{public}@] Switching from no sign to sign, should not animate";
      v52 = v39;
      v53 = 12;
LABEL_58:
      _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_INFO, v51, buf, v53);
    }

LABEL_59:

    goto LABEL_60;
  }

  if (([v29 isEqual:v28] & 1) == 0)
  {
    v39 = sub_1000811E8();
    if (!os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
    {
      goto LABEL_59;
    }

    v46 = self;
    if (!v46)
    {
      v45 = @"<nil>";
      goto LABEL_57;
    }

    v47 = objc_opt_class();
    v48 = NSStringFromClass(v47);
    if (objc_opt_respondsToSelector())
    {
      v49 = [(CarGuidanceCardViewController *)v46 performSelector:"accessibilityIdentifier"];
      v50 = v49;
      if (v49 && ![v49 isEqualToString:v48])
      {
        v45 = [NSString stringWithFormat:@"%@<%p, %@>", v48, v46, v50];

        goto LABEL_52;
      }
    }

    v45 = [NSString stringWithFormat:@"%@<%p>", v48, v46];
LABEL_52:

LABEL_57:
    *buf = 138543874;
    v66 = v45;
    v67 = 2112;
    v68 = *&v28;
    v69 = 2112;
    v70 = v29;
    v51 = "[%{public}@] Switching sign from %@ to %@";
    v52 = v39;
    v53 = 32;
    goto LABEL_58;
  }

LABEL_60:
  v54 = +[MNNavigationService sharedService];
  [v54 distanceUntilManeuver];
  v56 = v55;

  if (vabdd_f64(v56, self->_loggedDistanceToManeuver) > 100.0 && self->_loggedManeuverStep != a4)
  {
    v57 = sub_1000811E8();
    if (os_log_type_enabled(v57, OS_LOG_TYPE_INFO))
    {
      *buf = 134283777;
      v66 = a4;
      v67 = 2049;
      v68 = v56;
      _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_INFO, "[Car] Advanced to step %{private}lu with %{private}f meters until the next maneuver", buf, 0x16u);
    }

    self->_loggedDistanceToManeuver = v56;
    self->_loggedManeuverStep = a4;
  }

  if ([(CarGuidanceCardViewController *)self cardState]>= 2)
  {
    v58 = sub_1000811E8();
    if (!os_log_type_enabled(v58, OS_LOG_TYPE_INFO))
    {
LABEL_74:

      [(CarGuidanceCardViewController *)self _scheduleReloadAnimated:1];
      goto LABEL_75;
    }

    v59 = self;
    v60 = objc_opt_class();
    v61 = NSStringFromClass(v60);
    if (objc_opt_respondsToSelector())
    {
      v62 = [(CarGuidanceCardViewController *)v59 performSelector:"accessibilityIdentifier"];
      v63 = v62;
      if (v62 && ![v62 isEqualToString:v61])
      {
        v64 = [NSString stringWithFormat:@"%@<%p, %@>", v61, v59, v63];

        goto LABEL_73;
      }
    }

    v64 = [NSString stringWithFormat:@"%@<%p>", v61, v59];
LABEL_73:

    *buf = 138543362;
    v66 = v64;
    _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_INFO, "[%{public}@] Scheduling reload now", buf, 0xCu);

    goto LABEL_74;
  }

  [(CarGuidanceCardViewController *)self _updateCardState];
LABEL_75:
}

- (void)setJunctionViewInfo:(id)a3
{
  objc_storeStrong(&self->_junctionViewInfo, a3);
  v5 = a3;
  v6 = [(CarGuidanceCardViewController *)self fullGuidanceSign];
  [v6 setJunctionViewInfo:v5];
}

- (void)setLaneGuidanceInfo:(id)a3
{
  objc_storeStrong(&self->_laneGuidanceInfo, a3);
  v5 = a3;
  v6 = [(CarGuidanceCardViewController *)self fullGuidanceSign];
  [v6 setLaneGuidanceInfo:v5];

  [(CarGuidanceCardViewController *)self _guidanceWasUpdated];
}

- (void)setSecondaryGuidance:(id)a3
{
  objc_storeStrong(&self->_secondaryGuidance, a3);
  v5 = a3;
  v6 = [(CarGuidanceCardViewController *)self fullGuidanceSign];
  [v6 setSecondaryGuidance:v5];
}

- (void)setPrimaryGuidance:(id)a3
{
  objc_storeStrong(&self->_primaryGuidance, a3);
  v5 = a3;
  v6 = [(CarGuidanceCardViewController *)self fullGuidanceSign];
  [v6 setPrimaryGuidance:v5];

  v7 = [(CarGuidanceCardViewController *)self miniGuidanceSign];
  [v7 setPrimaryGuidance:v5];

  [(CarGuidanceCardViewController *)self _guidanceWasUpdated];
}

- (void)setHasGuidance:(BOOL)a3
{
  if (self->_hasGuidance != a3)
  {
    v3 = a3;
    self->_hasGuidance = a3;
    v5 = sub_1000811E8();
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
LABEL_11:

      [(CarGuidanceCardViewController *)self _updateCardState];
      return;
    }

    v6 = self;
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    if (objc_opt_respondsToSelector())
    {
      v9 = [(CarGuidanceCardViewController *)v6 performSelector:"accessibilityIdentifier"];
      v10 = v9;
      if (v9 && ![v9 isEqualToString:v8])
      {
        v11 = [NSString stringWithFormat:@"%@<%p, %@>", v8, v6, v10];

        goto LABEL_8;
      }
    }

    v11 = [NSString stringWithFormat:@"%@<%p>", v8, v6];
LABEL_8:

    v12 = @"NO";
    if (v3)
    {
      v12 = @"YES";
    }

    v13 = v12;
    *buf = 138543618;
    v15 = v11;
    v16 = 2112;
    v17 = v13;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}@] setHasGuidance: %@", buf, 0x16u);

    goto LABEL_11;
  }
}

- (void)showTemporarilyHiddenJunctionViewAnimated:(BOOL)a3
{
  v3 = a3;
  [(NSTimer *)self->_junctionViewRestoreTimer invalidate];
  v5 = [(CarGuidanceCardViewController *)self fullGuidanceSign];
  [v5 showJunctionViewAnimated:v3];
}

- (void)temporarilyHideJunctionViewForSeconds:(double)a3 animated:(BOOL)a4
{
  v4 = a4;
  v7 = [(CarGuidanceCardViewController *)self fullGuidanceSign];
  [v7 hideJunctionViewAnimated:v4];

  [(NSTimer *)self->_junctionViewRestoreTimer invalidate];
  objc_initWeak(&location, self);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1005F5D4C;
  v10[3] = &unk_101623A28;
  objc_copyWeak(&v11, &location);
  v12 = v4;
  v8 = [NSTimer scheduledTimerWithTimeInterval:0 repeats:v10 block:a3];
  junctionViewRestoreTimer = self->_junctionViewRestoreTimer;
  self->_junctionViewRestoreTimer = v8;

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

- (void)handleUserSelectionAtPoint:(CGPoint)a3
{
  if (self->_handlingSignPress)
  {
    v4 = sub_1000811E8();
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
LABEL_10:

      return;
    }

    v5 = self;
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    if (objc_opt_respondsToSelector())
    {
      v8 = [(CarGuidanceCardViewController *)v5 performSelector:"accessibilityIdentifier"];
      v9 = v8;
      if (v8 && ![v8 isEqualToString:v7])
      {
        v10 = [NSString stringWithFormat:@"%@<%p, %@>", v7, v5, v9];

        goto LABEL_8;
      }
    }

    v10 = [NSString stringWithFormat:@"%@<%p>", v7, v5];
LABEL_8:

    *buf = 138543362;
    v43 = v10;
    v11 = "[%{public}@] handleUserSelectionAtPoint: card is currently animating, ignoring tap.";
    v12 = v4;
    v13 = 12;
LABEL_9:
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, v11, buf, v13);

    goto LABEL_10;
  }

  y = a3.y;
  x = a3.x;
  self->_handlingSignPress = 1;
  v16 = [NSTimer scheduledTimerWithTimeInterval:self target:"_enableSignSelection" selector:0 userInfo:0 repeats:0.3];
  signSelectionTimer = self->_signSelectionTimer;
  self->_signSelectionTimer = v16;

  v18 = [(CarGuidanceCardViewController *)self fullGuidanceSign];
  v19 = [v18 isPointInJunctionView:{x, y}];

  if (v19)
  {
    v20 = sub_1000811E8();
    if (!os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
LABEL_19:

      [(CarGuidanceCardViewController *)self temporarilyHideJunctionViewForSeconds:1 animated:12.0];
      return;
    }

    v21 = self;
    v22 = objc_opt_class();
    v23 = NSStringFromClass(v22);
    if (objc_opt_respondsToSelector())
    {
      v24 = [(CarGuidanceCardViewController *)v21 performSelector:"accessibilityIdentifier"];
      v25 = v24;
      if (v24 && ![v24 isEqualToString:v23])
      {
        v26 = [NSString stringWithFormat:@"%@<%p, %@>", v23, v21, v25];

        goto LABEL_18;
      }
    }

    v26 = [NSString stringWithFormat:@"%@<%p>", v23, v21];
LABEL_18:

    *buf = 138543362;
    v43 = v26;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "[%{public}@] handleUserSelectionAtPoint: temporarily hiding junctionView.", buf, 0xCu);

    goto LABEL_19;
  }

  v27 = [(CarGuidanceCardViewController *)self cardState];
  v4 = sub_1000811E8();
  v28 = os_log_type_enabled(v4, OS_LOG_TYPE_INFO);
  if (v27 >= 4)
  {
    if (!v28)
    {
      goto LABEL_10;
    }

    v35 = self;
    v36 = objc_opt_class();
    v37 = NSStringFromClass(v36);
    if (objc_opt_respondsToSelector())
    {
      v38 = [(CarGuidanceCardViewController *)v35 performSelector:"accessibilityIdentifier"];
      v39 = v38;
      if (v38 && ![v38 isEqualToString:v37])
      {
        v10 = [NSString stringWithFormat:@"%@<%p, %@>", v37, v35, v39];

        goto LABEL_35;
      }
    }

    v10 = [NSString stringWithFormat:@"%@<%p>", v37, v35];
LABEL_35:

    v40 = [(CarGuidanceCardViewController *)v35 cardState];
    if (v40 > 4)
    {
      v41 = @".Unknown";
    }

    else
    {
      v41 = *(&off_101623A88 + v40);
    }

    *buf = 138543618;
    v43 = v10;
    v44 = 2112;
    v45 = v41;
    v11 = "[%{public}@] handleUserSelectionAtPoint: card is in a state (%@) that does not support taps. Aborting.";
    v12 = v4;
    v13 = 22;
    goto LABEL_9;
  }

  if (v28)
  {
    v29 = self;
    v30 = objc_opt_class();
    v31 = NSStringFromClass(v30);
    if (objc_opt_respondsToSelector())
    {
      v32 = [(CarGuidanceCardViewController *)v29 performSelector:"accessibilityIdentifier"];
      v33 = v32;
      if (v32 && ![v32 isEqualToString:v31])
      {
        v34 = [NSString stringWithFormat:@"%@<%p, %@>", v31, v29, v33];

        goto LABEL_27;
      }
    }

    v34 = [NSString stringWithFormat:@"%@<%p>", v31, v29];
LABEL_27:

    *buf = 138543362;
    v43 = v34;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[%{public}@] handleUserSelectionAtPoint: will handle tap by updating sign style", buf, 0xCu);
  }

  [(CarGuidanceCardViewController *)self setNavigationGuidanceSignStyle:[(CarGuidanceCardViewController *)self navigationGuidanceSignStyle]== 0 userInitiated:1];
}

- (void)_scheduleReloadAnimated:(BOOL)a3
{
  if (+[NSThread isMainThread])
  {
    if ([(CarGuidanceCardViewController *)self isViewLoaded]&& !self->_reloadTimer)
    {
      self->_reloadAnimated = a3;
      if (self->_reloading)
      {
        v5 = sub_1000811E8();
        if (!os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
        {
LABEL_12:

          self->_pendingReload = 1;
          return;
        }

        v6 = self;
        v7 = objc_opt_class();
        v8 = NSStringFromClass(v7);
        if (objc_opt_respondsToSelector())
        {
          v9 = [(CarGuidanceCardViewController *)v6 performSelector:"accessibilityIdentifier"];
          v10 = v9;
          if (v9 && ![v9 isEqualToString:v8])
          {
            v11 = [NSString stringWithFormat:@"%@<%p, %@>", v8, v6, v10];

            goto LABEL_11;
          }
        }

        v11 = [NSString stringWithFormat:@"%@<%p>", v8, v6];
LABEL_11:

        *buf = 138543362;
        v20 = v11;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}@] guidanceCardVC: _scheduleReload, but there is already a pending reload", buf, 0xCu);

        goto LABEL_12;
      }

      v13 = [NSTimer scheduledTimerWithTimeInterval:self target:"_reload" selector:0 userInfo:0 repeats:0.0];
      reloadTimer = self->_reloadTimer;
      self->_reloadTimer = v13;

      v15 = [(CarGuidanceCardViewController *)self view];
      v16 = [v15 subviews];
      v17 = [v16 count];

      if (!v17)
      {
        v18 = self->_reloadTimer;

        [(NSTimer *)v18 fire];
      }
    }
  }

  else
  {
    v12 = sub_1000811E8();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_FAULT, "_scheduleReloadAnimated in not on the main thread!", buf, 2u);
    }
  }
}

- (void)_swapDisplayedSignIfNeeded
{
  v3 = [(CarGuidanceCardViewController *)self cardState];
  v4 = v3;
  v5 = 0;
  if (v3 <= 1)
  {
    if (v3)
    {
      if (v3 != 1)
      {
        goto LABEL_13;
      }

      v6 = [(CarGuidanceCardViewController *)self reroutingOverlaySign];
    }

    else
    {
      v6 = [(CarGuidanceCardViewController *)self loadingOverlaySign];
    }
  }

  else
  {
    switch(v3)
    {
      case 2:
        v6 = [(CarGuidanceCardViewController *)self fullGuidanceSign];
        break;
      case 3:
        v6 = [(CarGuidanceCardViewController *)self miniGuidanceSign];
        break;
      case 4:
        v6 = [(CarGuidanceCardViewController *)self arrivalOverlaySign];
        break;
      default:
        goto LABEL_13;
    }
  }

  v5 = v6;
LABEL_13:
  v7 = [(CarGuidanceCardViewController *)self currentSign];

  if (v7 != v5)
  {
    v8 = sub_1000811E8();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
LABEL_27:

      [(CarGuidanceCardViewController *)self setCurrentSign:v5];
      v17 = [(CarGuidanceCardViewController *)self view];
      [v17 layoutIfNeeded];

      [(CarGuidanceCardViewController *)self _scheduleReloadAnimated:0];
      goto LABEL_28;
    }

    v9 = self;
    if (!v9)
    {
      v14 = @"<nil>";
      goto LABEL_23;
    }

    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    if (objc_opt_respondsToSelector())
    {
      v12 = [(CarGuidanceCardViewController *)v9 performSelector:"accessibilityIdentifier"];
      v13 = v12;
      if (v12 && ![v12 isEqualToString:v11])
      {
        v14 = [NSString stringWithFormat:@"%@<%p, %@>", v11, v9, v13];

        goto LABEL_21;
      }
    }

    v14 = [NSString stringWithFormat:@"%@<%p>", v11, v9];
LABEL_21:

LABEL_23:
    if (v4 > 4)
    {
      v15 = @".Unknown";
    }

    else
    {
      v15 = *(&off_101623A88 + v4);
    }

    v16 = [(CarGuidanceCardViewController *)v9 currentSign];
    *buf = 138544130;
    v19 = v14;
    v20 = 2112;
    v21 = v15;
    v22 = 2112;
    v23 = v16;
    v24 = 2112;
    v25 = v5;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "[%{public}@] _swapDisplayedSignIfNeeded: cardState=%@ currentSign=%@ newSign=%@", buf, 0x2Au);

    goto LABEL_27;
  }

LABEL_28:
}

- (void)setCardState:(unint64_t)a3 animated:(BOOL)a4
{
  if (self->_cardState != a3)
  {
    v4 = a3;
    v6 = sub_1000811E8();
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      goto LABEL_15;
    }

    v7 = self;
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    if (objc_opt_respondsToSelector())
    {
      v10 = [(CarGuidanceCardViewController *)v7 performSelector:"accessibilityIdentifier"];
      v11 = v10;
      if (v10 && ![v10 isEqualToString:v9])
      {
        v12 = [NSString stringWithFormat:@"%@<%p, %@>", v9, v7, v11];

        goto LABEL_8;
      }
    }

    v12 = [NSString stringWithFormat:@"%@<%p>", v9, v7];
LABEL_8:

    if (v4 > 4)
    {
      v13 = @".Unknown";
    }

    else
    {
      v13 = *(&off_101623A88 + v4);
    }

    cardState = self->_cardState;
    if (cardState > 4)
    {
      v15 = @".Unknown";
    }

    else
    {
      v15 = *(&off_101623A88 + cardState);
    }

    *buf = 138544130;
    v27 = v12;
    v28 = 2112;
    v29 = v13;
    v30 = 2112;
    v31 = v15;
    v32 = 2112;
    v33 = @"NO";
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "[%{public}@] guidanceCardVC: settingCardState: %@, fromState: %@, animated: %@", buf, 0x2Au);

LABEL_15:
    self->_cardState = v4;
    if (v4 < 2)
    {
      goto LABEL_25;
    }

    if (!self->_previousPrimaryGuidance)
    {
LABEL_27:
      [(CarGuidanceCardViewController *)self _swapDisplayedSignIfNeeded];
      return;
    }

    v16 = sub_1000811E8();
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
LABEL_24:

      previousPrimaryGuidance = self->_previousPrimaryGuidance;
      self->_previousPrimaryGuidance = 0;

      previousSecondaryGuidance = self->_previousSecondaryGuidance;
      self->_previousSecondaryGuidance = 0;

      previousLaneInfo = self->_previousLaneInfo;
      self->_previousLaneInfo = 0;

      v4 = self->_cardState;
LABEL_25:
      if (v4 == 1)
      {
        self->_loggedManeuverStep = 0x7FFFFFFFFFFFFFFFLL;
      }

      goto LABEL_27;
    }

    v17 = self;
    v18 = objc_opt_class();
    v19 = NSStringFromClass(v18);
    if (objc_opt_respondsToSelector())
    {
      v20 = [(CarGuidanceCardViewController *)v17 performSelector:"accessibilityIdentifier"];
      v21 = v20;
      if (v20 && ![v20 isEqualToString:v19])
      {
        v22 = [NSString stringWithFormat:@"%@<%p, %@>", v19, v17, v21];

        goto LABEL_23;
      }
    }

    v22 = [NSString stringWithFormat:@"%@<%p>", v19, v17];
LABEL_23:

    *buf = 138543362;
    v27 = v22;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "[%{public}@] Clearing previously saved sign guidance", buf, 0xCu);

    goto LABEL_24;
  }
}

- (void)_updateCardState
{
  v3 = [(CarGuidanceCardViewController *)self arrivalState];
  v4 = +[MNNavigationService sharedService];
  v5 = [v4 state];

  v6 = sub_1000811E8();
  if (!os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    goto LABEL_37;
  }

  v7 = self;
  if (!v7)
  {
    v12 = @"<nil>";
    goto LABEL_10;
  }

  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  if (objc_opt_respondsToSelector())
  {
    v10 = [(CarGuidanceCardViewController *)v7 performSelector:"accessibilityIdentifier"];
    v11 = v10;
    if (v10 && ![v10 isEqualToString:v9])
    {
      v12 = [NSString stringWithFormat:@"%@<%p, %@>", v9, v7, v11];

      goto LABEL_8;
    }
  }

  v12 = [NSString stringWithFormat:@"%@<%p>", v9, v7];
LABEL_8:

LABEL_10:
  v13 = v12;
  cardState = v7->_cardState;
  if (cardState > 4)
  {
    v15 = @".Unknown";
  }

  else
  {
    v15 = *(&off_101623A88 + cardState);
  }

  v42 = v15;
  v43 = v3;
  if (v3 == 5)
  {
    v16 = @"YES";
  }

  else
  {
    v16 = @"NO";
  }

  v17 = v16;
  if (v7->_isRerouting)
  {
    v18 = @"YES";
  }

  else
  {
    v18 = @"NO";
  }

  v19 = v18;
  if (v7->_hasGuidance)
  {
    v20 = @"YES";
  }

  else
  {
    v20 = @"NO";
  }

  v21 = v20;
  if (v5)
  {
    v22 = @"NO";
  }

  else
  {
    v22 = @"YES";
  }

  v23 = v22;
  navigationGuidanceSignStyle = v7->_navigationGuidanceSignStyle;
  if (navigationGuidanceSignStyle)
  {
    if (navigationGuidanceSignStyle == 1)
    {
      v25 = @".Mini";
    }

    else
    {
      v26 = sub_10006D178();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v45 = "NSString * _Nonnull NSStringFromCarNavigationGuidanceSignStyle(CarNavigationGuidanceSignStyle)";
        v46 = 2080;
        v47 = "CarNavigationGuidanceSign.h";
        v48 = 1024;
        LODWORD(v49) = 37;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion reached unexpectedly!", buf, 0x1Cu);
      }

      if (sub_100E03634())
      {
        v27 = sub_10006D178();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          v28 = +[NSThread callStackSymbols];
          *buf = 138412290;
          v45 = v28;
          _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
        }
      }

      v25 = @".Unknown";
    }
  }

  else
  {
    v25 = @".Default";
  }

  *buf = 138544898;
  v45 = v13;
  v46 = 2112;
  v47 = v42;
  v48 = 2112;
  v49 = v17;
  v50 = 2112;
  v51 = v19;
  v52 = 2112;
  v53 = v21;
  v54 = 2112;
  v55 = v23;
  v56 = 2112;
  v57 = v25;
  _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "[%{public}@] guidanceCardVC: _updateCardState. currentState: %@, hasArrived: %@, isRerouting: %@, hasGuidance: %@, hasNavigationStopped: %@, navSignStyle: %@", buf, 0x48u);

  v3 = v43;
LABEL_37:

  if (!v5)
  {
    return;
  }

  if (v3 != 5)
  {
    if (self->_isRerouting)
    {
      v29 = self;
      v30 = 1;
      goto LABEL_49;
    }

    if (!self->_hasGuidance)
    {
      v29 = self;
      v30 = 0;
      goto LABEL_49;
    }

    v31 = [(CarGuidanceCardViewController *)self navigationGuidanceSignStyle];
    if (!v31)
    {
      v29 = self;
      v30 = 2;
      goto LABEL_49;
    }

    if (v31 == 1)
    {
      v29 = self;
      v30 = 3;
      goto LABEL_49;
    }

    v32 = sub_10006D178();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v45 = "[CarGuidanceCardViewController _updateCardState]";
      v46 = 2080;
      v47 = "CarGuidanceCardViewController.m";
      v48 = 1024;
      LODWORD(v49) = 340;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion reached unexpectedly!", buf, 0x1Cu);
    }

    if (sub_100E03634())
    {
      v33 = sub_10006D178();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        v34 = +[NSThread callStackSymbols];
        *buf = 138412290;
        v45 = v34;
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }

    v35 = sub_1000811E8();
    if (!os_log_type_enabled(v35, OS_LOG_TYPE_FAULT))
    {
LABEL_64:

      return;
    }

    v36 = self;
    v37 = objc_opt_class();
    v38 = NSStringFromClass(v37);
    if (objc_opt_respondsToSelector())
    {
      v39 = [(CarGuidanceCardViewController *)v36 performSelector:"accessibilityIdentifier"];
      v40 = v39;
      if (v39 && ![v39 isEqualToString:v38])
      {
        v41 = [NSString stringWithFormat:@"%@<%p, %@>", v38, v36, v40];

        goto LABEL_63;
      }
    }

    v41 = [NSString stringWithFormat:@"%@<%p>", v38, v36];
LABEL_63:

    *buf = 138543362;
    v45 = v41;
    _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_FAULT, "[%{public}@] Was not able to infer cardState. The guidance sign might be in an unexpected state.", buf, 0xCu);

    goto LABEL_64;
  }

  v29 = self;
  v30 = 4;
LABEL_49:
  [(CarGuidanceCardViewController *)v29 setCardState:v30];
}

- (void)setNavigationGuidanceSignStyle:(int64_t)a3 userInitiated:(BOOL)a4
{
  if (self->_navigationGuidanceSignStyle != a3)
  {
    v5 = a4;
    self->_navigationGuidanceSignStyle = a3;
    [(CarGuidanceCardViewController *)self _updateCardState];
    v8 = [(CarGuidanceCardViewController *)self interactionDelegate];
    [v8 guidanceCardController:self didChangeGuidanceSignStyle:a3 userInitiated:v5];

    v9 = +[NSNotificationCenter defaultCenter];
    [v9 postNotificationName:@"CarNavigationGuidanceSignStyleUpdatedNotification" object:self];
  }
}

- (CarLoadingGuidanceSign)loadingOverlaySign
{
  loadingOverlaySign = self->_loadingOverlaySign;
  if (!loadingOverlaySign)
  {
    v4 = [[CarLoadingGuidanceSign alloc] initWithDestination:[(CarGuidanceCardViewController *)self destination]];
    v5 = self->_loadingOverlaySign;
    self->_loadingOverlaySign = v4;

    [(CarLoadingGuidanceSign *)self->_loadingOverlaySign setTranslatesAutoresizingMaskIntoConstraints:0];
    [(CarSpinnerGuidanceSign *)self->_loadingOverlaySign setSizeProvider:self];
    loadingOverlaySign = self->_loadingOverlaySign;
  }

  return loadingOverlaySign;
}

- (CarReroutingGuidanceSign)reroutingOverlaySign
{
  reroutingOverlaySign = self->_reroutingOverlaySign;
  if (!reroutingOverlaySign)
  {
    v4 = [[CarReroutingGuidanceSign alloc] initWithDestination:[(CarGuidanceCardViewController *)self destination]];
    v5 = self->_reroutingOverlaySign;
    self->_reroutingOverlaySign = v4;

    [(CarReroutingGuidanceSign *)self->_reroutingOverlaySign setTranslatesAutoresizingMaskIntoConstraints:0];
    [(CarSpinnerGuidanceSign *)self->_reroutingOverlaySign setSizeProvider:self];
    reroutingOverlaySign = self->_reroutingOverlaySign;
  }

  return reroutingOverlaySign;
}

- (CarArrivedGuidanceSign)arrivalOverlaySign
{
  arrivalOverlaySign = self->_arrivalOverlaySign;
  if (!arrivalOverlaySign)
  {
    v4 = +[MNNavigationService sharedService];
    v5 = [v4 route];
    v6 = [v5 destination];
    v7 = [v6 navDisplayName];
    v8 = [v7 mkServerFormattedString];

    v9 = [[CarArrivedGuidanceSign alloc] initWithDestination:[(CarGuidanceCardViewController *)self destination]];
    v10 = self->_arrivalOverlaySign;
    self->_arrivalOverlaySign = v9;

    [(CarArrivedGuidanceSign *)self->_arrivalOverlaySign setTranslatesAutoresizingMaskIntoConstraints:0];
    [(CarArrivedGuidanceSign *)self->_arrivalOverlaySign setFormattedDestination:v8];
    [(CarArrivedGuidanceSign *)self->_arrivalOverlaySign setSizeProvider:self];

    arrivalOverlaySign = self->_arrivalOverlaySign;
  }

  return arrivalOverlaySign;
}

- (void)setCurrentSign:(id)a3
{
  v5 = a3;
  currentSign = self->_currentSign;
  if (currentSign != v5)
  {
    v23 = v5;
    [(CarGuidanceCard *)currentSign removeFromSuperview];
    objc_storeStrong(&self->_currentSign, a3);
    v7 = [(CarGuidanceCardViewController *)self view];
    [v7 addSubview:self->_currentSign];

    v8 = [[NSMutableArray alloc] initWithCapacity:5];
    if ((objc_opt_respondsToSelector() & 1) != 0 && (-[CarGuidanceCard minimumCompressedContentLayoutGuide](v23, "minimumCompressedContentLayoutGuide"), v9 = objc_claimAutoreleasedReturnValue(), -[CarGuidanceCardViewController view](self, "view"), v10 = objc_claimAutoreleasedReturnValue(), [v10 heightAnchor], v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "heightAnchor"), v12 = objc_claimAutoreleasedReturnValue(), -[CarGuidanceCardViewController view](self, "view"), v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v13, "_car_dynamicPointScaleValue"), objc_msgSend(v11, "constraintGreaterThanOrEqualToAnchor:multiplier:", v12), v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "addObject:", v14), v14, v13, v12, v11, v10, v9))
    {
      if (self->_destination - 3 >= 2)
      {
        v15 = 750.0;
      }

      else
      {
        v15 = 1000.0;
      }
    }

    else
    {
      v15 = 1000.0;
    }

    v16 = self->_currentSign;
    v17 = [(CarGuidanceCardViewController *)self view];
    LODWORD(v18) = 1148846080;
    *&v19 = v15;
    LODWORD(v20) = 1148846080;
    LODWORD(v21) = 1148846080;
    v22 = [(CarGuidanceCard *)v16 _maps_constraintsForCenteringInView:v17 priorities:v18, v19, v20, v21];
    [v8 addObjectsFromArray:v22];

    [NSLayoutConstraint activateConstraints:v8];
    v5 = v23;
  }
}

- (NSUUID)proceedToRouteSignID
{
  proceedToRouteSignID = self->_proceedToRouteSignID;
  if (!proceedToRouteSignID)
  {
    v4 = +[NSUUID UUID];
    v5 = self->_proceedToRouteSignID;
    self->_proceedToRouteSignID = v4;

    proceedToRouteSignID = self->_proceedToRouteSignID;
  }

  return proceedToRouteSignID;
}

- (void)viewDidLoad
{
  v18.receiver = self;
  v18.super_class = CarGuidanceCardViewController;
  [(CarGuidanceCardViewController *)&v18 viewDidLoad];
  v3 = [(CarGuidanceCardViewController *)self view];
  [v3 setClipsToBounds:1];

  v4 = [(CarGuidanceCardViewController *)self view];
  [v4 setAccessibilityIdentifier:@"CarGuidanceCardView"];

  v5 = objc_opt_new();
  [(CarGuidanceCardViewController *)self cornerMaskForCarCardLayout:v5];
  v6 = location[2];

  if (self->_presentationType)
  {
    GEOConfigGetDouble();
    v8 = v7;
  }

  else
  {
    v8 = 0.0;
  }

  v9 = [(CarGuidanceCardViewController *)self view];
  v10 = [v9 heightAnchor];
  v11 = [v10 constraintGreaterThanOrEqualToConstant:{fmax(*&v6 + *&v6, v8)}];
  [v11 setActive:1];

  self->_loggedManeuverStep = 0x7FFFFFFFFFFFFFFFLL;
  [(CarGuidanceCardViewController *)self _updateCardState];
  [(CarGuidanceCardViewController *)self _swapDisplayedSignIfNeeded];
  objc_initWeak(location, self);
  v12 = [(CarGuidanceCardViewController *)self view];
  v19 = objc_opt_class();
  v13 = [NSArray arrayWithObjects:&v19 count:1];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1005F7A1C;
  v15[3] = &unk_1016546B0;
  objc_copyWeak(&v16, location);
  v14 = [v12 registerForTraitChanges:v13 withHandler:v15];

  objc_destroyWeak(&v16);
  objc_destroyWeak(location);
}

- (CarGuidanceCardViewController)initWithDestination:(unint64_t)a3 presentationType:(unint64_t)a4 guidanceCardSizeProvider:(id)a5 interactionDelegate:(id)a6
{
  v10 = a5;
  v11 = a6;
  v23.receiver = self;
  v23.super_class = CarGuidanceCardViewController;
  v12 = [(CarGuidanceCardViewController *)&v23 initWithNibName:0 bundle:0];
  v13 = v12;
  if (v12)
  {
    v12->_destination = a3;
    v12->_presentationType = a4;
    objc_storeWeak(&v12->_guidanceCardSizeProvider, v10);
    objc_storeWeak(&v13->_interactionDelegate, v11);
    v13->_navigationGuidanceSignStyle = 0;
    v14 = sub_1000811E8();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
LABEL_12:

      goto LABEL_13;
    }

    v15 = v13;
    v16 = objc_opt_class();
    v17 = NSStringFromClass(v16);
    if (objc_opt_respondsToSelector())
    {
      v18 = [(CarGuidanceCardViewController *)v15 performSelector:"accessibilityIdentifier"];
      v19 = v18;
      if (v18 && ![v18 isEqualToString:v17])
      {
        v20 = [NSString stringWithFormat:@"%@<%p, %@>", v17, v15, v19];

        goto LABEL_8;
      }
    }

    v20 = [NSString stringWithFormat:@"%@<%p>", v17, v15];
LABEL_8:

    if (a3 > 4)
    {
      v21 = @".Unknown";
    }

    else
    {
      v21 = *(&off_101623A48 + a3);
    }

    *buf = 138543618;
    v25 = v20;
    v26 = 2112;
    v27 = v21;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "[%{public}@] Initializing with destination: %@", buf, 0x16u);

    goto LABEL_12;
  }

LABEL_13:

  return v13;
}

- (void)dealloc
{
  [(NSTimer *)self->_signSelectionTimer invalidate];
  [(NSTimer *)self->_reloadTimer invalidate];
  [(NSTimer *)self->_junctionViewRestoreTimer invalidate];
  v3 = sub_1000811E8();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = self;
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    if (objc_opt_respondsToSelector())
    {
      v7 = [(CarGuidanceCardViewController *)v4 performSelector:"accessibilityIdentifier"];
      v8 = v7;
      if (v7 && ![v7 isEqualToString:v6])
      {
        v9 = [NSString stringWithFormat:@"%@<%p, %@>", v6, v4, v8];

        goto LABEL_7;
      }
    }

    v9 = [NSString stringWithFormat:@"%@<%p>", v6, v4];
LABEL_7:

    *buf = 138543362;
    v12 = v9;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{public}@] Deallocating", buf, 0xCu);
  }

  v10.receiver = self;
  v10.super_class = CarGuidanceCardViewController;
  [(CarGuidanceCardViewController *)&v10 dealloc];
}

@end