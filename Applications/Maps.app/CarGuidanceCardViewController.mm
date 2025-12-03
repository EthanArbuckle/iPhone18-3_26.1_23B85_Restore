@interface CarGuidanceCardViewController
- ($FEAE32A1819615878361D0F810751286)cornerMaskForCarCardLayout:(SEL)layout;
- (CGSize)availableCardSize;
- (CGSize)availableSize;
- (CarArrivedGuidanceSign)arrivalOverlaySign;
- (CarGuidanceCardInteractionDelegate)interactionDelegate;
- (CarGuidanceCardSizeProviding)guidanceCardSizeProvider;
- (CarGuidanceCardViewController)initWithDestination:(unint64_t)destination presentationType:(unint64_t)type guidanceCardSizeProvider:(id)provider interactionDelegate:(id)delegate;
- (CarLoadingGuidanceSign)loadingOverlaySign;
- (CarNavigationGuidanceSign)fullGuidanceSign;
- (CarNavigationGuidanceSign)miniGuidanceSign;
- (CarReroutingGuidanceSign)reroutingOverlaySign;
- (NSUUID)proceedToRouteSignID;
- (id)currentLaneGuidanceId;
- (unint64_t)maneuverViewLayoutType;
- (void)_guidanceWasUpdated;
- (void)_reload;
- (void)_scheduleReloadAnimated:(BOOL)animated;
- (void)_showRecalculatingWithDataConnectionFailedMessage:(BOOL)message;
- (void)_swapDisplayedSignIfNeeded;
- (void)_updateCardState;
- (void)_updateSignLayout;
- (void)dealloc;
- (void)didReroute;
- (void)dynamicBlurViewDidChangeBlurMode:(int64_t)mode;
- (void)handleUserSelectionAtPoint:(CGPoint)point;
- (void)hideJunctionView;
- (void)hideLaneGuidance;
- (void)hideRecalculating;
- (void)hideSecondaryManeuver;
- (void)presentJunctionViewInfo:(id)info;
- (void)setArrivalState:(unint64_t)state;
- (void)setAvailableCardSize:(CGSize)size;
- (void)setCardState:(unint64_t)state animated:(BOOL)animated;
- (void)setCurrentSign:(id)sign;
- (void)setDestinationDisplayName:(id)name;
- (void)setHasGuidance:(BOOL)guidance;
- (void)setIsRerouting:(BOOL)rerouting;
- (void)setJunctionViewInfo:(id)info;
- (void)setLaneGuidanceInfo:(id)info;
- (void)setNavigationGuidanceSignStyle:(int64_t)style userInitiated:(BOOL)initiated;
- (void)setPrimaryGuidance:(id)guidance;
- (void)setSecondaryGuidance:(id)guidance;
- (void)setTimeToManeuver:(double)maneuver distanceToManeuver:(double)toManeuver distanceText:(id)text forStep:(id)step atStepIndex:(unint64_t)index;
- (void)showJunctionView:(id)view;
- (void)showLaneGuidance:(id)guidance;
- (void)showManeuverSign:(id)sign maneuverStepIndex:(unint64_t)index;
- (void)showNoGuidance;
- (void)showProceedingToRouteDistance:(double)distance displayString:(id)string forStep:(id)step;
- (void)showRecalculating;
- (void)showRecalculationFailed;
- (void)showSecondaryManeuverSign:(id)sign;
- (void)showTemporarilyHiddenJunctionViewAnimated:(BOOL)animated;
- (void)temporarilyHideJunctionViewForSeconds:(double)seconds animated:(BOOL)animated;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation CarGuidanceCardViewController

- (void)_reload
{
  self->_reloading = 1;
  if (self->_reloadAnimated)
  {
    isViewLoaded = [(CarGuidanceCardViewController *)self isViewLoaded];
  }

  else
  {
    isViewLoaded = 0;
  }

  [(NSTimer *)self->_reloadTimer invalidate];
  reloadTimer = self->_reloadTimer;
  self->_reloadTimer = 0;

  v5 = [GroupAnimation animationForAnimatedFlag:isViewLoaded];
  [v5 setDuration:0.25];
  [v5 setOptions:6];
  currentSign = [(CarGuidanceCardViewController *)self currentSign];
  [currentSign updateWithGroupAnimation:v5];

  if (isViewLoaded)
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
  v8 = isViewLoaded;
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
  primaryGuidance = [(CarGuidanceCardViewController *)self primaryGuidance];
  if (primaryGuidance)
  {
    [(CarGuidanceCardViewController *)self setHasGuidance:1];
  }

  else
  {
    laneGuidanceInfo = [(CarGuidanceCardViewController *)self laneGuidanceInfo];
    [(CarGuidanceCardViewController *)self setHasGuidance:laneGuidanceInfo != 0];
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
  currentSign = [(CarGuidanceCardViewController *)self currentSign];
  [currentSign setNeedsLayout];

  currentSign2 = [(CarGuidanceCardViewController *)self currentSign];
  [currentSign2 layoutIfNeeded];
}

- (unint64_t)maneuverViewLayoutType
{
  destination = [(CarGuidanceCardViewController *)self destination];
  if (destination - 2 < 3)
  {
    guidanceCardSizeProvider = [(CarGuidanceCardViewController *)self guidanceCardSizeProvider];

    if (!guidanceCardSizeProvider)
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

    guidanceCardSizeProvider2 = [(CarGuidanceCardViewController *)self guidanceCardSizeProvider];
    maneuverViewLayoutType = [guidanceCardSizeProvider2 maneuverViewLayoutType];
LABEL_4:

    return maneuverViewLayoutType;
  }

  if (destination <= 1)
  {
    junctionViewInfo = [(CarGuidanceCardViewController *)self junctionViewInfo];

    if (junctionViewInfo)
    {
      return 2;
    }

    guidanceCardSizeProvider2 = +[CarDisplayController sharedInstance];
    window = [guidanceCardSizeProvider2 window];
    [window bounds];
    maneuverViewLayoutType = CGRectGetWidth(v24) * 0.449999988 >= 180.0;

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
  destination = [(CarGuidanceCardViewController *)self destination];
  if (destination - 2 >= 3)
  {
    if (destination > 1)
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
    guidanceCardSizeProvider = [(CarGuidanceCardViewController *)self guidanceCardSizeProvider];

    if (!guidanceCardSizeProvider)
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

    guidanceCardSizeProvider2 = [(CarGuidanceCardViewController *)self guidanceCardSizeProvider];
    [guidanceCardSizeProvider2 availableSize];
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

- (void)setAvailableCardSize:(CGSize)size
{
  if (size.width != self->_availableCardSize.width || size.height != self->_availableCardSize.height)
  {
    self->_availableCardSize = size;
    [(CarGuidanceCardViewController *)self _updateSignLayout];
  }
}

- (void)dynamicBlurViewDidChangeBlurMode:(int64_t)mode
{
  fullGuidanceSign = [(CarGuidanceCardViewController *)self fullGuidanceSign];
  [fullGuidanceSign setBlurMode:mode];

  miniGuidanceSign = [(CarGuidanceCardViewController *)self miniGuidanceSign];
  [miniGuidanceSign setBlurMode:mode];
}

- ($FEAE32A1819615878361D0F810751286)cornerMaskForCarCardLayout:(SEL)layout
{
  view = [(CarGuidanceCardViewController *)self view];
  [view _car_dynamicPointScaleValue];
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

- (void)showProceedingToRouteDistance:(double)distance displayString:(id)string forStep:(id)step
{
  stringCopy = string;
  stepCopy = step;
  if ([(CarGuidanceCardViewController *)self cardState]!= 4)
  {
    v10 = [stepCopy contentsForContext:1];
    v11 = [v10 stringForDistance:distance];
    if (stringCopy)
    {
      mkServerFormattedString = [stringCopy mkServerFormattedString];
      v30 = mkServerFormattedString;
      v13 = [NSArray arrayWithObjects:&v30 count:1];
    }

    else
    {
      v13 = 0;
    }

    primaryGuidance = [(CarGuidanceCardViewController *)self primaryGuidance];
    maneuverArtwork = [primaryGuidance maneuverArtwork];

    if (!maneuverArtwork)
    {
      v16 = [GuidanceManeuverArtwork alloc];
      artworkOverride = [stepCopy artworkOverride];
      maneuverArtwork = [(GuidanceManeuverArtwork *)v16 initWithManeuver:17 junction:0 drivingSide:1 artworkDataSource:artworkOverride];
    }

    v18 = [NavSignManeuverGuidanceInfo alloc];
    proceedToRouteSignID = [(CarGuidanceCardViewController *)self proceedToRouteSignID];
    if (v11)
    {
      [v11 mkServerFormattedString];
      v29 = v28 = stringCopy;
      v20 = stepCopy;
      v21 = v11;
      v22 = v10;
      v23 = v29;
      v24 = [NSArray arrayWithObjects:&v29 count:1];
      v25 = [(NavSignManeuverGuidanceInfo *)v18 initWithSignID:proceedToRouteSignID maneuverArtwork:maneuverArtwork majorTextAlternatives:v24 minorTextAlternatives:v13 shieldInfo:0];

      v10 = v22;
      v11 = v21;
      stepCopy = v20;
      stringCopy = v28;
    }

    else
    {
      v25 = [(NavSignManeuverGuidanceInfo *)v18 initWithSignID:proceedToRouteSignID maneuverArtwork:maneuverArtwork majorTextAlternatives:0 minorTextAlternatives:v13 shieldInfo:0];
    }

    primaryGuidance2 = [(CarGuidanceCardViewController *)self primaryGuidance];
    v27 = [NavSignManeuverGuidanceInfo updatedGuidanceWithPreviousGuidance:primaryGuidance2 currentGuidance:v25];
    [(CarGuidanceCardViewController *)self setPrimaryGuidance:v27];

    [(CarGuidanceCardViewController *)self _scheduleReloadAnimated:1];
  }
}

- (void)setTimeToManeuver:(double)maneuver distanceToManeuver:(double)toManeuver distanceText:(id)text forStep:(id)step atStepIndex:(unint64_t)index
{
  textCopy = text;
  cardState = [(CarGuidanceCardViewController *)self cardState];
  if (textCopy && cardState != 4)
  {
    v16 = textCopy;
    v10 = [NSArray arrayWithObjects:&v16 count:1];
    primaryGuidance = [(CarGuidanceCardViewController *)self primaryGuidance];
    [primaryGuidance setMajorTextAlternatives:v10];

    v15 = textCopy;
    v12 = [NSArray arrayWithObjects:&v15 count:1];
    fullGuidanceSign = [(CarGuidanceCardViewController *)self fullGuidanceSign];
    primaryGuidance2 = [fullGuidanceSign primaryGuidance];
    [primaryGuidance2 setMajorTextAlternatives:v12];

    [(CarGuidanceCardViewController *)self _scheduleReloadAnimated:1];
  }
}

- (void)_showRecalculatingWithDataConnectionFailedMessage:(BOOL)message
{
  messageCopy = message;
  v5 = [(CarGuidanceCardViewController *)self cardState]== 1;
  reroutingOverlaySign = [(CarGuidanceCardViewController *)self reroutingOverlaySign];
  [reroutingOverlaySign setShowMessage:messageCopy animated:v5];
}

- (void)showRecalculationFailed
{
  v3 = sub_1000811E8();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    selfCopy = self;
    if (!selfCopy)
    {
      selfCopy = @"<nil>";
      goto LABEL_10;
    }

    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    if (objc_opt_respondsToSelector())
    {
      v7 = [(CarGuidanceCardViewController *)selfCopy performSelector:"accessibilityIdentifier"];
      v8 = v7;
      if (v7 && ![v7 isEqualToString:v6])
      {
        selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v6, selfCopy, v8];

        goto LABEL_8;
      }
    }

    selfCopy = [NSString stringWithFormat:@"%@<%p>", v6, selfCopy];
LABEL_8:

LABEL_10:
    *buf = 138543362;
    v11 = selfCopy;
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
    selfCopy = self;
    if (!selfCopy)
    {
      selfCopy = @"<nil>";
      goto LABEL_10;
    }

    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    if (objc_opt_respondsToSelector())
    {
      v7 = [(CarGuidanceCardViewController *)selfCopy performSelector:"accessibilityIdentifier"];
      v8 = v7;
      if (v7 && ![v7 isEqualToString:v6])
      {
        selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v6, selfCopy, v8];

        goto LABEL_8;
      }
    }

    selfCopy = [NSString stringWithFormat:@"%@<%p>", v6, selfCopy];
LABEL_8:

LABEL_10:
    *buf = 138543362;
    v11 = selfCopy;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{public}@] didReroute", buf, 0xCu);
  }

  [(CarGuidanceCardViewController *)self setIsRerouting:0];
}

- (void)hideRecalculating
{
  v3 = sub_1000811E8();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    selfCopy = self;
    if (!selfCopy)
    {
      selfCopy = @"<nil>";
      goto LABEL_10;
    }

    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    if (objc_opt_respondsToSelector())
    {
      v7 = [(CarGuidanceCardViewController *)selfCopy performSelector:"accessibilityIdentifier"];
      v8 = v7;
      if (v7 && ![v7 isEqualToString:v6])
      {
        selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v6, selfCopy, v8];

        goto LABEL_8;
      }
    }

    selfCopy = [NSString stringWithFormat:@"%@<%p>", v6, selfCopy];
LABEL_8:

LABEL_10:
    *buf = 138543362;
    v11 = selfCopy;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{public}@] hideRecalculating", buf, 0xCu);
  }

  [(CarGuidanceCardViewController *)self setIsRerouting:0];
}

- (void)showRecalculating
{
  v3 = sub_1000811E8();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    selfCopy = self;
    if (!selfCopy)
    {
      selfCopy = @"<nil>";
      goto LABEL_10;
    }

    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    if (objc_opt_respondsToSelector())
    {
      v7 = [(CarGuidanceCardViewController *)selfCopy performSelector:"accessibilityIdentifier"];
      v8 = v7;
      if (v7 && ![v7 isEqualToString:v6])
      {
        selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v6, selfCopy, v8];

        goto LABEL_8;
      }
    }

    selfCopy = [NSString stringWithFormat:@"%@<%p>", v6, selfCopy];
LABEL_8:

LABEL_10:
    *buf = 138543362;
    v24 = selfCopy;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{public}@] showRecalculating", buf, 0xCu);
  }

  [(CarGuidanceCardViewController *)self setIsRerouting:1];
  if (!self->_previousPrimaryGuidance)
  {
    v10 = sub_1000811E8();
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
LABEL_19:

      primaryGuidance = [(CarGuidanceCardViewController *)self primaryGuidance];
      previousPrimaryGuidance = self->_previousPrimaryGuidance;
      self->_previousPrimaryGuidance = primaryGuidance;

      secondaryGuidance = [(CarGuidanceCardViewController *)self secondaryGuidance];
      previousSecondaryGuidance = self->_previousSecondaryGuidance;
      self->_previousSecondaryGuidance = secondaryGuidance;

      laneGuidanceInfo = [(CarGuidanceCardViewController *)self laneGuidanceInfo];
      previousLaneInfo = self->_previousLaneInfo;
      self->_previousLaneInfo = laneGuidanceInfo;

      goto LABEL_20;
    }

    selfCopy2 = self;
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    if (objc_opt_respondsToSelector())
    {
      v14 = [(CarGuidanceCardViewController *)selfCopy2 performSelector:"accessibilityIdentifier"];
      v15 = v14;
      if (v14 && ![v14 isEqualToString:v13])
      {
        selfCopy2 = [NSString stringWithFormat:@"%@<%p, %@>", v13, selfCopy2, v15];

        goto LABEL_18;
      }
    }

    selfCopy2 = [NSString stringWithFormat:@"%@<%p>", v13, selfCopy2];
LABEL_18:

    *buf = 138543362;
    v24 = selfCopy2;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "[%{public}@] Saving current sign guidance", buf, 0xCu);

    goto LABEL_19;
  }

LABEL_20:
  [(CarGuidanceCardViewController *)self showNoGuidance];
  [(CarGuidanceCardViewController *)self _showRecalculatingWithDataConnectionFailedMessage:0];
}

- (void)setIsRerouting:(BOOL)rerouting
{
  if (self->_isRerouting != rerouting)
  {
    reroutingCopy = rerouting;
    if (!rerouting || [(CarGuidanceCardViewController *)self arrivalState]== 1)
    {
      self->_isRerouting = reroutingCopy;
      v5 = sub_1000811E8();
      if (!os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
LABEL_13:

        [(CarGuidanceCardViewController *)self _updateCardState];
        return;
      }

      selfCopy = self;
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      if (objc_opt_respondsToSelector())
      {
        v9 = [(CarGuidanceCardViewController *)selfCopy performSelector:"accessibilityIdentifier"];
        v10 = v9;
        if (v9 && ![v9 isEqualToString:v8])
        {
          selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v8, selfCopy, v10];

          goto LABEL_10;
        }
      }

      selfCopy = [NSString stringWithFormat:@"%@<%p>", v8, selfCopy];
LABEL_10:

      v12 = @"NO";
      if (reroutingCopy)
      {
        v12 = @"YES";
      }

      v13 = v12;
      *buf = 138543618;
      v22 = selfCopy;
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

    selfCopy2 = self;
    v16 = objc_opt_class();
    v17 = NSStringFromClass(v16);
    if (objc_opt_respondsToSelector())
    {
      v18 = [(CarGuidanceCardViewController *)selfCopy2 performSelector:"accessibilityIdentifier"];
      v19 = v18;
      if (v18 && ![v18 isEqualToString:v17])
      {
        selfCopy2 = [NSString stringWithFormat:@"%@<%p, %@>", v17, selfCopy2, v19];

        goto LABEL_20;
      }
    }

    selfCopy2 = [NSString stringWithFormat:@"%@<%p>", v17, selfCopy2];
LABEL_20:

    *buf = 138543618;
    v22 = selfCopy2;
    v23 = 2112;
    v24 = @"YES";
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "[%{public}@] Will ignore setIsRerouting: %@, because we are in an arrival state.", buf, 0x16u);

LABEL_21:
  }
}

- (void)setDestinationDisplayName:(id)name
{
  mkServerFormattedString = [name mkServerFormattedString];
  [(CarArrivedGuidanceSign *)self->_arrivalOverlaySign setFormattedDestination:mkServerFormattedString];
}

- (void)setArrivalState:(unint64_t)state
{
  if (self->_arrivalState == state)
  {
    return;
  }

  self->_arrivalState = state;
  v5 = sub_1000811E8();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    selfCopy = self;
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    if (objc_opt_respondsToSelector())
    {
      v9 = [(CarGuidanceCardViewController *)selfCopy performSelector:"accessibilityIdentifier"];
      v10 = v9;
      if (v9 && ![v9 isEqualToString:v8])
      {
        selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v8, selfCopy, v10];

        goto LABEL_8;
      }
    }

    selfCopy = [NSString stringWithFormat:@"%@<%p>", v8, selfCopy];
LABEL_8:

    if (state - 1 > 4)
    {
      v12 = @"Unavailable";
    }

    else
    {
      v12 = *(&off_101631088 + state - 1);
    }

    v13 = v12;
    *buf = 138543618;
    v15 = selfCopy;
    v16 = 2112;
    v17 = v13;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}@] etaCardVC: updateArrivalState: %@", buf, 0x16u);
  }

  if (state == 5)
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
  junctionViewInfo = [(CarGuidanceCardViewController *)self junctionViewInfo];

  if (junctionViewInfo)
  {
    [(CarGuidanceCardViewController *)self setJunctionViewInfo:0];

    [(CarGuidanceCardViewController *)self _scheduleReloadAnimated:1];
  }
}

- (void)presentJunctionViewInfo:(id)info
{
  [(CarGuidanceCardViewController *)self setJunctionViewInfo:info];

  [(CarGuidanceCardViewController *)self _scheduleReloadAnimated:1];
}

- (void)showJunctionView:(id)view
{
  viewCopy = view;
  if (viewCopy)
  {
    junctionViewInfo = [(CarGuidanceCardViewController *)self junctionViewInfo];
    v5 = [viewCopy isEqual:junctionViewInfo];

    if ((v5 & 1) == 0)
    {
      [(CarGuidanceCardViewController *)self presentJunctionViewInfo:viewCopy];
    }
  }
}

- (void)hideLaneGuidance
{
  laneGuidanceInfo = [(CarGuidanceCardViewController *)self laneGuidanceInfo];

  if (laneGuidanceInfo)
  {
    [(CarGuidanceCardViewController *)self setLaneGuidanceInfo:0];

    [(CarGuidanceCardViewController *)self _scheduleReloadAnimated:1];
  }
}

- (void)showLaneGuidance:(id)guidance
{
  guidanceCopy = guidance;
  if (guidanceCopy)
  {
    laneGuidanceInfo = [(CarGuidanceCardViewController *)self laneGuidanceInfo];
    v5 = [guidanceCopy isEqual:laneGuidanceInfo];

    if ((v5 & 1) == 0)
    {
      [(CarGuidanceCardViewController *)self setLaneGuidanceInfo:guidanceCopy];
      [(CarGuidanceCardViewController *)self _scheduleReloadAnimated:1];
    }
  }
}

- (id)currentLaneGuidanceId
{
  laneGuidanceInfo = [(CarGuidanceCardViewController *)self laneGuidanceInfo];
  laneInfoId = [laneGuidanceInfo laneInfoId];

  return laneInfoId;
}

- (void)hideSecondaryManeuver
{
  secondaryGuidance = [(CarGuidanceCardViewController *)self secondaryGuidance];

  if (secondaryGuidance)
  {
    v4 = sub_1000811E8();
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
LABEL_12:

      [(CarGuidanceCardViewController *)self setSecondaryGuidance:0];
      [(CarGuidanceCardViewController *)self _scheduleReloadAnimated:1];
      return;
    }

    selfCopy = self;
    if (!selfCopy)
    {
      selfCopy = @"<nil>";
      goto LABEL_11;
    }

    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    if (objc_opt_respondsToSelector())
    {
      v8 = [(CarGuidanceCardViewController *)selfCopy performSelector:"accessibilityIdentifier"];
      v9 = v8;
      if (v8 && ![v8 isEqualToString:v7])
      {
        selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v7, selfCopy, v9];

        goto LABEL_9;
      }
    }

    selfCopy = [NSString stringWithFormat:@"%@<%p>", v7, selfCopy];
LABEL_9:

LABEL_11:
    secondaryGuidance2 = [(CarGuidanceCardViewController *)selfCopy secondaryGuidance];
    signID = [secondaryGuidance2 signID];
    uUIDString = [signID UUIDString];
    *buf = 138543618;
    v15 = selfCopy;
    v16 = 2112;
    v17 = uUIDString;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[%{public}@] Hiding secondary maneuver sign: %@", buf, 0x16u);

    goto LABEL_12;
  }
}

- (void)showSecondaryManeuverSign:(id)sign
{
  signCopy = sign;
  v5 = sub_1000811E8();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    selfCopy = self;
    if (!selfCopy)
    {
      selfCopy = @"<nil>";
      goto LABEL_10;
    }

    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    if (objc_opt_respondsToSelector())
    {
      v9 = [(CarGuidanceCardViewController *)selfCopy performSelector:"accessibilityIdentifier"];
      v10 = v9;
      if (v9 && ![v9 isEqualToString:v8])
      {
        selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v8, selfCopy, v10];

        goto LABEL_8;
      }
    }

    selfCopy = [NSString stringWithFormat:@"%@<%p>", v8, selfCopy];
LABEL_8:

LABEL_10:
    signID = [signCopy signID];
    uUIDString = [signID UUIDString];
    *buf = 138543618;
    v17 = selfCopy;
    v18 = 2112;
    v19 = uUIDString;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}@] Showing secondary maneuver sign: %@", buf, 0x16u);
  }

  secondaryGuidance = [(CarGuidanceCardViewController *)self secondaryGuidance];
  v15 = [NavSignManeuverGuidanceInfo updatedGuidanceWithPreviousGuidance:secondaryGuidance currentGuidance:signCopy];
  [(CarGuidanceCardViewController *)self setSecondaryGuidance:v15];

  [(CarGuidanceCardViewController *)self _scheduleReloadAnimated:1];
}

- (void)showManeuverSign:(id)sign maneuverStepIndex:(unint64_t)index
{
  signCopy = sign;
  v7 = sub_1000811E8();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    selfCopy = self;
    if (!selfCopy)
    {
      selfCopy = @"<nil>";
      goto LABEL_10;
    }

    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    if (objc_opt_respondsToSelector())
    {
      v11 = [(CarGuidanceCardViewController *)selfCopy performSelector:"accessibilityIdentifier"];
      v12 = v11;
      if (v11 && ![v11 isEqualToString:v10])
      {
        selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v10, selfCopy, v12];

        goto LABEL_8;
      }
    }

    selfCopy = [NSString stringWithFormat:@"%@<%p>", v10, selfCopy];
LABEL_8:

LABEL_10:
    signID = [signCopy signID];
    uUIDString = [signID UUIDString];
    *buf = 138543618;
    indexCopy = selfCopy;
    v67 = 2112;
    v68 = *&uUIDString;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "[%{public}@] Showing primary maneuver sign: %@", buf, 0x16u);
  }

  [PPTNotificationCenter postNotificationIfNeededWithName:@"MapsPPTGuidanceWillUpdateNotifcation" object:self userInfo:0];
  primaryGuidance = [(CarGuidanceCardViewController *)self primaryGuidance];
  if (primaryGuidance)
  {

    goto LABEL_22;
  }

  signID2 = [(NavSignManeuverGuidanceInfo *)self->_previousPrimaryGuidance signID];
  signID3 = [signCopy signID];
  v19 = [signID2 isEqual:signID3];

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

    selfCopy2 = self;
    v22 = objc_opt_class();
    v23 = NSStringFromClass(v22);
    if (objc_opt_respondsToSelector())
    {
      v24 = [(CarGuidanceCardViewController *)selfCopy2 performSelector:"accessibilityIdentifier"];
      v25 = v24;
      if (v24 && ![v24 isEqualToString:v23])
      {
        selfCopy2 = [NSString stringWithFormat:@"%@<%p, %@>", v23, selfCopy2, v25];

        goto LABEL_20;
      }
    }

    selfCopy2 = [NSString stringWithFormat:@"%@<%p>", v23, selfCopy2];
LABEL_20:

    *buf = 138543362;
    indexCopy = selfCopy2;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "[%{public}@] Restoring sign state", buf, 0xCu);

    goto LABEL_21;
  }

LABEL_22:
  primaryGuidance2 = [(CarGuidanceCardViewController *)self primaryGuidance];
  signID4 = [primaryGuidance2 signID];

  signID5 = [signCopy signID];
  if (!signID5)
  {
    v30 = sub_1000811E8();
    if (!os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
LABEL_33:

      goto LABEL_34;
    }

    selfCopy3 = self;
    if (!selfCopy3)
    {
      selfCopy3 = @"<nil>";
      goto LABEL_32;
    }

    v32 = objc_opt_class();
    v33 = NSStringFromClass(v32);
    if (objc_opt_respondsToSelector())
    {
      v34 = [(CarGuidanceCardViewController *)selfCopy3 performSelector:"accessibilityIdentifier"];
      v35 = v34;
      if (v34 && ![v34 isEqualToString:v33])
      {
        selfCopy3 = [NSString stringWithFormat:@"%@<%p, %@>", v33, selfCopy3, v35];

        goto LABEL_30;
      }
    }

    selfCopy3 = [NSString stringWithFormat:@"%@<%p>", v33, selfCopy3];
LABEL_30:

LABEL_32:
    *buf = 138543618;
    indexCopy = selfCopy3;
    v67 = 2112;
    v68 = *&signCopy;
    _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "[%{public}@] showManeuverSign without a UUID: %@, this shouldn't happen.", buf, 0x16u);

    goto LABEL_33;
  }

LABEL_34:
  primaryGuidance3 = [(CarGuidanceCardViewController *)self primaryGuidance];
  v38 = [NavSignManeuverGuidanceInfo updatedGuidanceWithPreviousGuidance:primaryGuidance3 currentGuidance:signCopy];
  [(CarGuidanceCardViewController *)self setPrimaryGuidance:v38];

  if (!signID4 && signID5)
  {
    v39 = sub_1000811E8();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
    {
      selfCopy4 = self;
      if (!selfCopy4)
      {
        selfCopy4 = @"<nil>";
        goto LABEL_54;
      }

      v41 = objc_opt_class();
      v42 = NSStringFromClass(v41);
      if (objc_opt_respondsToSelector())
      {
        v43 = [(CarGuidanceCardViewController *)selfCopy4 performSelector:"accessibilityIdentifier"];
        v44 = v43;
        if (v43 && ![v43 isEqualToString:v42])
        {
          selfCopy4 = [NSString stringWithFormat:@"%@<%p, %@>", v42, selfCopy4, v44];

          goto LABEL_43;
        }
      }

      selfCopy4 = [NSString stringWithFormat:@"%@<%p>", v42, selfCopy4];
LABEL_43:

LABEL_54:
      *buf = 138543362;
      indexCopy = selfCopy4;
      v51 = "[%{public}@] Switching from no sign to sign, should not animate";
      v52 = v39;
      v53 = 12;
LABEL_58:
      _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_INFO, v51, buf, v53);
    }

LABEL_59:

    goto LABEL_60;
  }

  if (([signID5 isEqual:signID4] & 1) == 0)
  {
    v39 = sub_1000811E8();
    if (!os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
    {
      goto LABEL_59;
    }

    selfCopy5 = self;
    if (!selfCopy5)
    {
      selfCopy4 = @"<nil>";
      goto LABEL_57;
    }

    v47 = objc_opt_class();
    v48 = NSStringFromClass(v47);
    if (objc_opt_respondsToSelector())
    {
      v49 = [(CarGuidanceCardViewController *)selfCopy5 performSelector:"accessibilityIdentifier"];
      v50 = v49;
      if (v49 && ![v49 isEqualToString:v48])
      {
        selfCopy4 = [NSString stringWithFormat:@"%@<%p, %@>", v48, selfCopy5, v50];

        goto LABEL_52;
      }
    }

    selfCopy4 = [NSString stringWithFormat:@"%@<%p>", v48, selfCopy5];
LABEL_52:

LABEL_57:
    *buf = 138543874;
    indexCopy = selfCopy4;
    v67 = 2112;
    v68 = *&signID4;
    v69 = 2112;
    v70 = signID5;
    v51 = "[%{public}@] Switching sign from %@ to %@";
    v52 = v39;
    v53 = 32;
    goto LABEL_58;
  }

LABEL_60:
  v54 = +[MNNavigationService sharedService];
  [v54 distanceUntilManeuver];
  v56 = v55;

  if (vabdd_f64(v56, self->_loggedDistanceToManeuver) > 100.0 && self->_loggedManeuverStep != index)
  {
    v57 = sub_1000811E8();
    if (os_log_type_enabled(v57, OS_LOG_TYPE_INFO))
    {
      *buf = 134283777;
      indexCopy = index;
      v67 = 2049;
      v68 = v56;
      _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_INFO, "[Car] Advanced to step %{private}lu with %{private}f meters until the next maneuver", buf, 0x16u);
    }

    self->_loggedDistanceToManeuver = v56;
    self->_loggedManeuverStep = index;
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

    selfCopy6 = self;
    v60 = objc_opt_class();
    v61 = NSStringFromClass(v60);
    if (objc_opt_respondsToSelector())
    {
      v62 = [(CarGuidanceCardViewController *)selfCopy6 performSelector:"accessibilityIdentifier"];
      v63 = v62;
      if (v62 && ![v62 isEqualToString:v61])
      {
        selfCopy6 = [NSString stringWithFormat:@"%@<%p, %@>", v61, selfCopy6, v63];

        goto LABEL_73;
      }
    }

    selfCopy6 = [NSString stringWithFormat:@"%@<%p>", v61, selfCopy6];
LABEL_73:

    *buf = 138543362;
    indexCopy = selfCopy6;
    _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_INFO, "[%{public}@] Scheduling reload now", buf, 0xCu);

    goto LABEL_74;
  }

  [(CarGuidanceCardViewController *)self _updateCardState];
LABEL_75:
}

- (void)setJunctionViewInfo:(id)info
{
  objc_storeStrong(&self->_junctionViewInfo, info);
  infoCopy = info;
  fullGuidanceSign = [(CarGuidanceCardViewController *)self fullGuidanceSign];
  [fullGuidanceSign setJunctionViewInfo:infoCopy];
}

- (void)setLaneGuidanceInfo:(id)info
{
  objc_storeStrong(&self->_laneGuidanceInfo, info);
  infoCopy = info;
  fullGuidanceSign = [(CarGuidanceCardViewController *)self fullGuidanceSign];
  [fullGuidanceSign setLaneGuidanceInfo:infoCopy];

  [(CarGuidanceCardViewController *)self _guidanceWasUpdated];
}

- (void)setSecondaryGuidance:(id)guidance
{
  objc_storeStrong(&self->_secondaryGuidance, guidance);
  guidanceCopy = guidance;
  fullGuidanceSign = [(CarGuidanceCardViewController *)self fullGuidanceSign];
  [fullGuidanceSign setSecondaryGuidance:guidanceCopy];
}

- (void)setPrimaryGuidance:(id)guidance
{
  objc_storeStrong(&self->_primaryGuidance, guidance);
  guidanceCopy = guidance;
  fullGuidanceSign = [(CarGuidanceCardViewController *)self fullGuidanceSign];
  [fullGuidanceSign setPrimaryGuidance:guidanceCopy];

  miniGuidanceSign = [(CarGuidanceCardViewController *)self miniGuidanceSign];
  [miniGuidanceSign setPrimaryGuidance:guidanceCopy];

  [(CarGuidanceCardViewController *)self _guidanceWasUpdated];
}

- (void)setHasGuidance:(BOOL)guidance
{
  if (self->_hasGuidance != guidance)
  {
    guidanceCopy = guidance;
    self->_hasGuidance = guidance;
    v5 = sub_1000811E8();
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
LABEL_11:

      [(CarGuidanceCardViewController *)self _updateCardState];
      return;
    }

    selfCopy = self;
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    if (objc_opt_respondsToSelector())
    {
      v9 = [(CarGuidanceCardViewController *)selfCopy performSelector:"accessibilityIdentifier"];
      v10 = v9;
      if (v9 && ![v9 isEqualToString:v8])
      {
        selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v8, selfCopy, v10];

        goto LABEL_8;
      }
    }

    selfCopy = [NSString stringWithFormat:@"%@<%p>", v8, selfCopy];
LABEL_8:

    v12 = @"NO";
    if (guidanceCopy)
    {
      v12 = @"YES";
    }

    v13 = v12;
    *buf = 138543618;
    v15 = selfCopy;
    v16 = 2112;
    v17 = v13;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}@] setHasGuidance: %@", buf, 0x16u);

    goto LABEL_11;
  }
}

- (void)showTemporarilyHiddenJunctionViewAnimated:(BOOL)animated
{
  animatedCopy = animated;
  [(NSTimer *)self->_junctionViewRestoreTimer invalidate];
  fullGuidanceSign = [(CarGuidanceCardViewController *)self fullGuidanceSign];
  [fullGuidanceSign showJunctionViewAnimated:animatedCopy];
}

- (void)temporarilyHideJunctionViewForSeconds:(double)seconds animated:(BOOL)animated
{
  animatedCopy = animated;
  fullGuidanceSign = [(CarGuidanceCardViewController *)self fullGuidanceSign];
  [fullGuidanceSign hideJunctionViewAnimated:animatedCopy];

  [(NSTimer *)self->_junctionViewRestoreTimer invalidate];
  objc_initWeak(&location, self);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1005F5D4C;
  v10[3] = &unk_101623A28;
  objc_copyWeak(&v11, &location);
  v12 = animatedCopy;
  v8 = [NSTimer scheduledTimerWithTimeInterval:0 repeats:v10 block:seconds];
  junctionViewRestoreTimer = self->_junctionViewRestoreTimer;
  self->_junctionViewRestoreTimer = v8;

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

- (void)handleUserSelectionAtPoint:(CGPoint)point
{
  if (self->_handlingSignPress)
  {
    v4 = sub_1000811E8();
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
LABEL_10:

      return;
    }

    selfCopy = self;
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    if (objc_opt_respondsToSelector())
    {
      v8 = [(CarGuidanceCardViewController *)selfCopy performSelector:"accessibilityIdentifier"];
      v9 = v8;
      if (v8 && ![v8 isEqualToString:v7])
      {
        selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v7, selfCopy, v9];

        goto LABEL_8;
      }
    }

    selfCopy = [NSString stringWithFormat:@"%@<%p>", v7, selfCopy];
LABEL_8:

    *buf = 138543362;
    v43 = selfCopy;
    v11 = "[%{public}@] handleUserSelectionAtPoint: card is currently animating, ignoring tap.";
    v12 = v4;
    v13 = 12;
LABEL_9:
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, v11, buf, v13);

    goto LABEL_10;
  }

  y = point.y;
  x = point.x;
  self->_handlingSignPress = 1;
  v16 = [NSTimer scheduledTimerWithTimeInterval:self target:"_enableSignSelection" selector:0 userInfo:0 repeats:0.3];
  signSelectionTimer = self->_signSelectionTimer;
  self->_signSelectionTimer = v16;

  fullGuidanceSign = [(CarGuidanceCardViewController *)self fullGuidanceSign];
  v19 = [fullGuidanceSign isPointInJunctionView:{x, y}];

  if (v19)
  {
    v20 = sub_1000811E8();
    if (!os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
LABEL_19:

      [(CarGuidanceCardViewController *)self temporarilyHideJunctionViewForSeconds:1 animated:12.0];
      return;
    }

    selfCopy2 = self;
    v22 = objc_opt_class();
    v23 = NSStringFromClass(v22);
    if (objc_opt_respondsToSelector())
    {
      v24 = [(CarGuidanceCardViewController *)selfCopy2 performSelector:"accessibilityIdentifier"];
      v25 = v24;
      if (v24 && ![v24 isEqualToString:v23])
      {
        selfCopy2 = [NSString stringWithFormat:@"%@<%p, %@>", v23, selfCopy2, v25];

        goto LABEL_18;
      }
    }

    selfCopy2 = [NSString stringWithFormat:@"%@<%p>", v23, selfCopy2];
LABEL_18:

    *buf = 138543362;
    v43 = selfCopy2;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "[%{public}@] handleUserSelectionAtPoint: temporarily hiding junctionView.", buf, 0xCu);

    goto LABEL_19;
  }

  cardState = [(CarGuidanceCardViewController *)self cardState];
  v4 = sub_1000811E8();
  v28 = os_log_type_enabled(v4, OS_LOG_TYPE_INFO);
  if (cardState >= 4)
  {
    if (!v28)
    {
      goto LABEL_10;
    }

    selfCopy3 = self;
    v36 = objc_opt_class();
    v37 = NSStringFromClass(v36);
    if (objc_opt_respondsToSelector())
    {
      v38 = [(CarGuidanceCardViewController *)selfCopy3 performSelector:"accessibilityIdentifier"];
      v39 = v38;
      if (v38 && ![v38 isEqualToString:v37])
      {
        selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v37, selfCopy3, v39];

        goto LABEL_35;
      }
    }

    selfCopy = [NSString stringWithFormat:@"%@<%p>", v37, selfCopy3];
LABEL_35:

    cardState2 = [(CarGuidanceCardViewController *)selfCopy3 cardState];
    if (cardState2 > 4)
    {
      v41 = @".Unknown";
    }

    else
    {
      v41 = *(&off_101623A88 + cardState2);
    }

    *buf = 138543618;
    v43 = selfCopy;
    v44 = 2112;
    v45 = v41;
    v11 = "[%{public}@] handleUserSelectionAtPoint: card is in a state (%@) that does not support taps. Aborting.";
    v12 = v4;
    v13 = 22;
    goto LABEL_9;
  }

  if (v28)
  {
    selfCopy4 = self;
    v30 = objc_opt_class();
    v31 = NSStringFromClass(v30);
    if (objc_opt_respondsToSelector())
    {
      v32 = [(CarGuidanceCardViewController *)selfCopy4 performSelector:"accessibilityIdentifier"];
      v33 = v32;
      if (v32 && ![v32 isEqualToString:v31])
      {
        selfCopy4 = [NSString stringWithFormat:@"%@<%p, %@>", v31, selfCopy4, v33];

        goto LABEL_27;
      }
    }

    selfCopy4 = [NSString stringWithFormat:@"%@<%p>", v31, selfCopy4];
LABEL_27:

    *buf = 138543362;
    v43 = selfCopy4;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[%{public}@] handleUserSelectionAtPoint: will handle tap by updating sign style", buf, 0xCu);
  }

  [(CarGuidanceCardViewController *)self setNavigationGuidanceSignStyle:[(CarGuidanceCardViewController *)self navigationGuidanceSignStyle]== 0 userInitiated:1];
}

- (void)_scheduleReloadAnimated:(BOOL)animated
{
  if (+[NSThread isMainThread])
  {
    if ([(CarGuidanceCardViewController *)self isViewLoaded]&& !self->_reloadTimer)
    {
      self->_reloadAnimated = animated;
      if (self->_reloading)
      {
        v5 = sub_1000811E8();
        if (!os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
        {
LABEL_12:

          self->_pendingReload = 1;
          return;
        }

        selfCopy = self;
        v7 = objc_opt_class();
        v8 = NSStringFromClass(v7);
        if (objc_opt_respondsToSelector())
        {
          v9 = [(CarGuidanceCardViewController *)selfCopy performSelector:"accessibilityIdentifier"];
          v10 = v9;
          if (v9 && ![v9 isEqualToString:v8])
          {
            selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v8, selfCopy, v10];

            goto LABEL_11;
          }
        }

        selfCopy = [NSString stringWithFormat:@"%@<%p>", v8, selfCopy];
LABEL_11:

        *buf = 138543362;
        v20 = selfCopy;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}@] guidanceCardVC: _scheduleReload, but there is already a pending reload", buf, 0xCu);

        goto LABEL_12;
      }

      v13 = [NSTimer scheduledTimerWithTimeInterval:self target:"_reload" selector:0 userInfo:0 repeats:0.0];
      reloadTimer = self->_reloadTimer;
      self->_reloadTimer = v13;

      view = [(CarGuidanceCardViewController *)self view];
      subviews = [view subviews];
      v17 = [subviews count];

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
  cardState = [(CarGuidanceCardViewController *)self cardState];
  v4 = cardState;
  v5 = 0;
  if (cardState <= 1)
  {
    if (cardState)
    {
      if (cardState != 1)
      {
        goto LABEL_13;
      }

      reroutingOverlaySign = [(CarGuidanceCardViewController *)self reroutingOverlaySign];
    }

    else
    {
      reroutingOverlaySign = [(CarGuidanceCardViewController *)self loadingOverlaySign];
    }
  }

  else
  {
    switch(cardState)
    {
      case 2:
        reroutingOverlaySign = [(CarGuidanceCardViewController *)self fullGuidanceSign];
        break;
      case 3:
        reroutingOverlaySign = [(CarGuidanceCardViewController *)self miniGuidanceSign];
        break;
      case 4:
        reroutingOverlaySign = [(CarGuidanceCardViewController *)self arrivalOverlaySign];
        break;
      default:
        goto LABEL_13;
    }
  }

  v5 = reroutingOverlaySign;
LABEL_13:
  currentSign = [(CarGuidanceCardViewController *)self currentSign];

  if (currentSign != v5)
  {
    v8 = sub_1000811E8();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
LABEL_27:

      [(CarGuidanceCardViewController *)self setCurrentSign:v5];
      view = [(CarGuidanceCardViewController *)self view];
      [view layoutIfNeeded];

      [(CarGuidanceCardViewController *)self _scheduleReloadAnimated:0];
      goto LABEL_28;
    }

    selfCopy = self;
    if (!selfCopy)
    {
      selfCopy = @"<nil>";
      goto LABEL_23;
    }

    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    if (objc_opt_respondsToSelector())
    {
      v12 = [(CarGuidanceCardViewController *)selfCopy performSelector:"accessibilityIdentifier"];
      v13 = v12;
      if (v12 && ![v12 isEqualToString:v11])
      {
        selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v11, selfCopy, v13];

        goto LABEL_21;
      }
    }

    selfCopy = [NSString stringWithFormat:@"%@<%p>", v11, selfCopy];
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

    currentSign2 = [(CarGuidanceCardViewController *)selfCopy currentSign];
    *buf = 138544130;
    v19 = selfCopy;
    v20 = 2112;
    v21 = v15;
    v22 = 2112;
    v23 = currentSign2;
    v24 = 2112;
    v25 = v5;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "[%{public}@] _swapDisplayedSignIfNeeded: cardState=%@ currentSign=%@ newSign=%@", buf, 0x2Au);

    goto LABEL_27;
  }

LABEL_28:
}

- (void)setCardState:(unint64_t)state animated:(BOOL)animated
{
  if (self->_cardState != state)
  {
    stateCopy = state;
    v6 = sub_1000811E8();
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      goto LABEL_15;
    }

    selfCopy = self;
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    if (objc_opt_respondsToSelector())
    {
      v10 = [(CarGuidanceCardViewController *)selfCopy performSelector:"accessibilityIdentifier"];
      v11 = v10;
      if (v10 && ![v10 isEqualToString:v9])
      {
        selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v9, selfCopy, v11];

        goto LABEL_8;
      }
    }

    selfCopy = [NSString stringWithFormat:@"%@<%p>", v9, selfCopy];
LABEL_8:

    if (stateCopy > 4)
    {
      v13 = @".Unknown";
    }

    else
    {
      v13 = *(&off_101623A88 + stateCopy);
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
    v27 = selfCopy;
    v28 = 2112;
    v29 = v13;
    v30 = 2112;
    v31 = v15;
    v32 = 2112;
    v33 = @"NO";
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "[%{public}@] guidanceCardVC: settingCardState: %@, fromState: %@, animated: %@", buf, 0x2Au);

LABEL_15:
    self->_cardState = stateCopy;
    if (stateCopy < 2)
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

      stateCopy = self->_cardState;
LABEL_25:
      if (stateCopy == 1)
      {
        self->_loggedManeuverStep = 0x7FFFFFFFFFFFFFFFLL;
      }

      goto LABEL_27;
    }

    selfCopy2 = self;
    v18 = objc_opt_class();
    v19 = NSStringFromClass(v18);
    if (objc_opt_respondsToSelector())
    {
      v20 = [(CarGuidanceCardViewController *)selfCopy2 performSelector:"accessibilityIdentifier"];
      v21 = v20;
      if (v20 && ![v20 isEqualToString:v19])
      {
        selfCopy2 = [NSString stringWithFormat:@"%@<%p, %@>", v19, selfCopy2, v21];

        goto LABEL_23;
      }
    }

    selfCopy2 = [NSString stringWithFormat:@"%@<%p>", v19, selfCopy2];
LABEL_23:

    *buf = 138543362;
    v27 = selfCopy2;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "[%{public}@] Clearing previously saved sign guidance", buf, 0xCu);

    goto LABEL_24;
  }
}

- (void)_updateCardState
{
  arrivalState = [(CarGuidanceCardViewController *)self arrivalState];
  v4 = +[MNNavigationService sharedService];
  state = [v4 state];

  v6 = sub_1000811E8();
  if (!os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    goto LABEL_37;
  }

  selfCopy = self;
  if (!selfCopy)
  {
    selfCopy = @"<nil>";
    goto LABEL_10;
  }

  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  if (objc_opt_respondsToSelector())
  {
    v10 = [(CarGuidanceCardViewController *)selfCopy performSelector:"accessibilityIdentifier"];
    v11 = v10;
    if (v10 && ![v10 isEqualToString:v9])
    {
      selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v9, selfCopy, v11];

      goto LABEL_8;
    }
  }

  selfCopy = [NSString stringWithFormat:@"%@<%p>", v9, selfCopy];
LABEL_8:

LABEL_10:
  v13 = selfCopy;
  cardState = selfCopy->_cardState;
  if (cardState > 4)
  {
    v15 = @".Unknown";
  }

  else
  {
    v15 = *(&off_101623A88 + cardState);
  }

  v42 = v15;
  v43 = arrivalState;
  if (arrivalState == 5)
  {
    v16 = @"YES";
  }

  else
  {
    v16 = @"NO";
  }

  v17 = v16;
  if (selfCopy->_isRerouting)
  {
    v18 = @"YES";
  }

  else
  {
    v18 = @"NO";
  }

  v19 = v18;
  if (selfCopy->_hasGuidance)
  {
    v20 = @"YES";
  }

  else
  {
    v20 = @"NO";
  }

  v21 = v20;
  if (state)
  {
    v22 = @"NO";
  }

  else
  {
    v22 = @"YES";
  }

  v23 = v22;
  navigationGuidanceSignStyle = selfCopy->_navigationGuidanceSignStyle;
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

  arrivalState = v43;
LABEL_37:

  if (!state)
  {
    return;
  }

  if (arrivalState != 5)
  {
    if (self->_isRerouting)
    {
      selfCopy7 = self;
      v30 = 1;
      goto LABEL_49;
    }

    if (!self->_hasGuidance)
    {
      selfCopy7 = self;
      v30 = 0;
      goto LABEL_49;
    }

    navigationGuidanceSignStyle = [(CarGuidanceCardViewController *)self navigationGuidanceSignStyle];
    if (!navigationGuidanceSignStyle)
    {
      selfCopy7 = self;
      v30 = 2;
      goto LABEL_49;
    }

    if (navigationGuidanceSignStyle == 1)
    {
      selfCopy7 = self;
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

    selfCopy6 = self;
    v37 = objc_opt_class();
    v38 = NSStringFromClass(v37);
    if (objc_opt_respondsToSelector())
    {
      v39 = [(CarGuidanceCardViewController *)selfCopy6 performSelector:"accessibilityIdentifier"];
      v40 = v39;
      if (v39 && ![v39 isEqualToString:v38])
      {
        selfCopy6 = [NSString stringWithFormat:@"%@<%p, %@>", v38, selfCopy6, v40];

        goto LABEL_63;
      }
    }

    selfCopy6 = [NSString stringWithFormat:@"%@<%p>", v38, selfCopy6];
LABEL_63:

    *buf = 138543362;
    v45 = selfCopy6;
    _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_FAULT, "[%{public}@] Was not able to infer cardState. The guidance sign might be in an unexpected state.", buf, 0xCu);

    goto LABEL_64;
  }

  selfCopy7 = self;
  v30 = 4;
LABEL_49:
  [(CarGuidanceCardViewController *)selfCopy7 setCardState:v30];
}

- (void)setNavigationGuidanceSignStyle:(int64_t)style userInitiated:(BOOL)initiated
{
  if (self->_navigationGuidanceSignStyle != style)
  {
    initiatedCopy = initiated;
    self->_navigationGuidanceSignStyle = style;
    [(CarGuidanceCardViewController *)self _updateCardState];
    interactionDelegate = [(CarGuidanceCardViewController *)self interactionDelegate];
    [interactionDelegate guidanceCardController:self didChangeGuidanceSignStyle:style userInitiated:initiatedCopy];

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
    route = [v4 route];
    destination = [route destination];
    navDisplayName = [destination navDisplayName];
    mkServerFormattedString = [navDisplayName mkServerFormattedString];

    v9 = [[CarArrivedGuidanceSign alloc] initWithDestination:[(CarGuidanceCardViewController *)self destination]];
    v10 = self->_arrivalOverlaySign;
    self->_arrivalOverlaySign = v9;

    [(CarArrivedGuidanceSign *)self->_arrivalOverlaySign setTranslatesAutoresizingMaskIntoConstraints:0];
    [(CarArrivedGuidanceSign *)self->_arrivalOverlaySign setFormattedDestination:mkServerFormattedString];
    [(CarArrivedGuidanceSign *)self->_arrivalOverlaySign setSizeProvider:self];

    arrivalOverlaySign = self->_arrivalOverlaySign;
  }

  return arrivalOverlaySign;
}

- (void)setCurrentSign:(id)sign
{
  signCopy = sign;
  currentSign = self->_currentSign;
  if (currentSign != signCopy)
  {
    v23 = signCopy;
    [(CarGuidanceCard *)currentSign removeFromSuperview];
    objc_storeStrong(&self->_currentSign, sign);
    view = [(CarGuidanceCardViewController *)self view];
    [view addSubview:self->_currentSign];

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
    view2 = [(CarGuidanceCardViewController *)self view];
    LODWORD(v18) = 1148846080;
    *&v19 = v15;
    LODWORD(v20) = 1148846080;
    LODWORD(v21) = 1148846080;
    v22 = [(CarGuidanceCard *)v16 _maps_constraintsForCenteringInView:view2 priorities:v18, v19, v20, v21];
    [v8 addObjectsFromArray:v22];

    [NSLayoutConstraint activateConstraints:v8];
    signCopy = v23;
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
  view = [(CarGuidanceCardViewController *)self view];
  [view setClipsToBounds:1];

  view2 = [(CarGuidanceCardViewController *)self view];
  [view2 setAccessibilityIdentifier:@"CarGuidanceCardView"];

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

  view3 = [(CarGuidanceCardViewController *)self view];
  heightAnchor = [view3 heightAnchor];
  v11 = [heightAnchor constraintGreaterThanOrEqualToConstant:{fmax(*&v6 + *&v6, v8)}];
  [v11 setActive:1];

  self->_loggedManeuverStep = 0x7FFFFFFFFFFFFFFFLL;
  [(CarGuidanceCardViewController *)self _updateCardState];
  [(CarGuidanceCardViewController *)self _swapDisplayedSignIfNeeded];
  objc_initWeak(location, self);
  view4 = [(CarGuidanceCardViewController *)self view];
  v19 = objc_opt_class();
  v13 = [NSArray arrayWithObjects:&v19 count:1];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1005F7A1C;
  v15[3] = &unk_1016546B0;
  objc_copyWeak(&v16, location);
  v14 = [view4 registerForTraitChanges:v13 withHandler:v15];

  objc_destroyWeak(&v16);
  objc_destroyWeak(location);
}

- (CarGuidanceCardViewController)initWithDestination:(unint64_t)destination presentationType:(unint64_t)type guidanceCardSizeProvider:(id)provider interactionDelegate:(id)delegate
{
  providerCopy = provider;
  delegateCopy = delegate;
  v23.receiver = self;
  v23.super_class = CarGuidanceCardViewController;
  v12 = [(CarGuidanceCardViewController *)&v23 initWithNibName:0 bundle:0];
  v13 = v12;
  if (v12)
  {
    v12->_destination = destination;
    v12->_presentationType = type;
    objc_storeWeak(&v12->_guidanceCardSizeProvider, providerCopy);
    objc_storeWeak(&v13->_interactionDelegate, delegateCopy);
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

    if (destination > 4)
    {
      v21 = @".Unknown";
    }

    else
    {
      v21 = *(&off_101623A48 + destination);
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
    selfCopy = self;
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    if (objc_opt_respondsToSelector())
    {
      v7 = [(CarGuidanceCardViewController *)selfCopy performSelector:"accessibilityIdentifier"];
      v8 = v7;
      if (v7 && ![v7 isEqualToString:v6])
      {
        selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v6, selfCopy, v8];

        goto LABEL_7;
      }
    }

    selfCopy = [NSString stringWithFormat:@"%@<%p>", v6, selfCopy];
LABEL_7:

    *buf = 138543362;
    v12 = selfCopy;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{public}@] Deallocating", buf, 0xCu);
  }

  v10.receiver = self;
  v10.super_class = CarGuidanceCardViewController;
  [(CarGuidanceCardViewController *)&v10 dealloc];
}

@end