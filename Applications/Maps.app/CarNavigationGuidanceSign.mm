@interface CarNavigationGuidanceSign
- (BOOL)_shouldForceSecondaryManeuverViewHidden;
- (BOOL)isPointInJunctionView:(CGPoint)view;
- (CarGuidanceCardSizeProviding)sizeProvider;
- (CarManeuverView)primaryManeuverView;
- (CarManeuverView)secondaryManeuverView;
- (CarNavigationGuidanceSign)initWithDestination:(unint64_t)destination;
- (NSString)description;
- (UIView)junctionView;
- (double)_heightForCompressionStage:(unint64_t)stage isMaximumCompression:(BOOL *)compression;
- (double)availableWidth;
- (double)complementarySignHeightForManeuverView:(id)view;
- (double)dynamicPointScaleValue;
- (double)maxAvailableHeightForJunctionView:(double)view;
- (unint64_t)_desiredCompressionStage;
- (void)_handleCarScreenSizeChange;
- (void)_hideMiniSignAnimated:(BOOL)animated;
- (void)_prepareManeuverView:(id)view;
- (void)_replacePrimaryViewManeuver:(id)maneuver initialConstraints:(id)constraints finalConstraints:(id)finalConstraints slide:(BOOL)slide;
- (void)_replaceSecondaryViewManeuver:(id)maneuver initialConstraints:(id)constraints finalConstraints:(id)finalConstraints;
- (void)_resetPrecalculatedCompressionSizes;
- (void)_showMiniSign;
- (void)_updateCompressionStage;
- (void)_updateMiniSignVisibility;
- (void)dealloc;
- (void)didMoveToWindow;
- (void)hideJunctionViewAnimated:(BOOL)animated;
- (void)layoutSubviews;
- (void)refreshJunctionView;
- (void)setBlurMode:(int64_t)mode;
- (void)setCompressionStage:(unint64_t)stage;
- (void)setJunctionViewHidden:(BOOL)hidden;
- (void)setJunctionViewInfo:(id)info;
- (void)setJunctionViewTemporarilyHidden:(BOOL)hidden;
- (void)setLayoutType:(unint64_t)type;
- (void)setNextPrimaryManeuver:(id)maneuver;
- (void)setPrimaryGuidance:(id)guidance;
- (void)setPrimaryGuidanceSignID:(id)d;
- (void)setPrimaryManeuver:(id)maneuver;
- (void)setSecondaryGuidance:(id)guidance;
- (void)setSecondaryGuidanceSignID:(id)d;
- (void)setSecondaryViewHidden:(BOOL)hidden;
- (void)setSignStyle:(int64_t)style;
- (void)showJunctionViewAnimated:(BOOL)animated;
- (void)updateWithGroupAnimation:(id)animation;
@end

@implementation CarNavigationGuidanceSign

- (UIView)junctionView
{
  junctionViewController = [(CarNavigationGuidanceSign *)self junctionViewController];
  view = [junctionViewController view];

  return view;
}

- (CarManeuverView)secondaryManeuverView
{
  secondaryGuidanceSignID = [(CarNavigationGuidanceSign *)self secondaryGuidanceSignID];

  if (!secondaryGuidanceSignID)
  {
    goto LABEL_6;
  }

  nextSecondaryManeuver = [(CarNavigationGuidanceSign *)self nextSecondaryManeuver];

  if (nextSecondaryManeuver)
  {
    nextSecondaryManeuver2 = [(CarNavigationGuidanceSign *)self nextSecondaryManeuver];
    goto LABEL_7;
  }

  secondaryManeuver = [(CarNavigationGuidanceSign *)self secondaryManeuver];

  if (secondaryManeuver)
  {
    nextSecondaryManeuver2 = [(CarNavigationGuidanceSign *)self secondaryManeuver];
  }

  else
  {
LABEL_6:
    nextSecondaryManeuver2 = 0;
  }

LABEL_7:

  return nextSecondaryManeuver2;
}

- (CarManeuverView)primaryManeuverView
{
  nextPrimaryManeuver = [(CarNavigationGuidanceSign *)self nextPrimaryManeuver];

  if (nextPrimaryManeuver)
  {
    nextPrimaryManeuver2 = [(CarNavigationGuidanceSign *)self nextPrimaryManeuver];
  }

  else
  {
    primaryManeuver = [(CarNavigationGuidanceSign *)self primaryManeuver];

    if (primaryManeuver)
    {
      nextPrimaryManeuver2 = [(CarNavigationGuidanceSign *)self primaryManeuver];
    }

    else
    {
      nextPrimaryManeuver2 = 0;
    }
  }

  return nextPrimaryManeuver2;
}

- (unint64_t)_desiredCompressionStage
{
  if ([(CarNavigationGuidanceSign *)self signStyle]== 1)
  {
    v3 = sub_10007E168();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      destination = [(CarNavigationGuidanceSign *)self destination];
      if (destination > 4)
      {
        v5 = @".Unknown";
      }

      else
      {
        v5 = *(&off_101623A48 + destination);
      }

      v20 = v5;
      *buf = 138412546;
      v28 = v20;
      v29 = 2048;
      selfCopy3 = self;
      v21 = "%@ navSign: %p, _desiredCompressionStage isLowGuidance, because signStyle is .Mini.";
LABEL_19:
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, v21, buf, 0x16u);

      goto LABEL_20;
    }

    goto LABEL_20;
  }

  sizeProvider = [(CarNavigationGuidanceSign *)self sizeProvider];
  [sizeProvider availableSize];
  v8 = v7;
  v10 = v9;

  if (v8 < 125.0)
  {
    v3 = sub_10007E168();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      destination2 = [(CarNavigationGuidanceSign *)self destination];
      if (destination2 > 4)
      {
        v12 = @".Unknown";
      }

      else
      {
        v12 = *(&off_101623A48 + destination2);
      }

      v20 = v12;
      *buf = 138412546;
      v28 = v20;
      v29 = 2048;
      selfCopy3 = self;
      v21 = "%@ navSign: %p, _desiredCompressionStage isLowGuidance, because availableWidth is < MinWidthSupportingFullGuidanceView";
      goto LABEL_19;
    }

LABEL_20:

    return 9;
  }

  v26 = 0;
  [(CarNavigationGuidanceSign *)self _heightForCompressionStage:0 isMaximumCompression:&v26];
  v14 = v13;
  v15 = 0;
  do
  {
    if (v14 < v10)
    {
      break;
    }

    [(CarNavigationGuidanceSign *)self _heightForCompressionStage:++v15 isMaximumCompression:&v26];
    v14 = v16;
  }

  while (v26 != 1);
  v17 = sub_10007E168();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    destination3 = [(CarNavigationGuidanceSign *)self destination];
    if (destination3 > 4)
    {
      v19 = @".Unknown";
    }

    else
    {
      v19 = *(&off_101623A48 + destination3);
    }

    v22 = v19;
    compressionStage = [(CarNavigationGuidanceSign *)self compressionStage];
    v39.width = v8;
    v39.height = v10;
    v24 = NSStringFromCGSize(v39);
    *buf = 138413570;
    v28 = v22;
    v29 = 2048;
    selfCopy3 = self;
    v31 = 2048;
    v32 = compressionStage;
    v33 = 2048;
    v34 = v15;
    v35 = 2112;
    v36 = v24;
    v37 = 2048;
    v38 = v14;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "%@ navSign: %p, _desiredCompressionStage. before: %lu, after: %lu. availableSize: %@, final used height: %.1f", buf, 0x3Eu);
  }

  return v15;
}

- (BOOL)_shouldForceSecondaryManeuverViewHidden
{
  destination = [(CarNavigationGuidanceSign *)self destination];
  if (destination - 3 >= 2)
  {
    return destination > 1 || [(CarNavigationGuidanceSign *)self signStyle]== 1;
  }

  return GEOConfigGetBOOL();
}

- (void)layoutSubviews
{
  v15.receiver = self;
  v15.super_class = CarNavigationGuidanceSign;
  [(CarNavigationGuidanceSign *)&v15 layoutSubviews];
  primaryManeuverView = [(CarNavigationGuidanceSign *)self primaryManeuverView];

  if (primaryManeuverView)
  {
    layoutType = [(CarNavigationGuidanceSign *)self layoutType];
    sizeProvider = [(CarNavigationGuidanceSign *)self sizeProvider];
    -[CarNavigationGuidanceSign setLayoutType:](self, "setLayoutType:", [sizeProvider maneuverViewLayoutType]);

    [(CarNavigationGuidanceSign *)self _updateCompressionStage];
    junctionViewInfo = [(CarNavigationGuidanceSign *)self junctionViewInfo];
    if (junctionViewInfo)
    {
      v7 = junctionViewInfo;
      junctionView = [(CarNavigationGuidanceSign *)self junctionView];
      isHidden = [junctionView isHidden];

      if ((isHidden & 1) == 0)
      {
        [(CarNavigationGuidanceSign *)self maxAvailableHeightForJunctionView:0.0];
        v11 = v10;
        junctionViewController = [(CarNavigationGuidanceSign *)self junctionViewController];
        [junctionViewController setAvailableHeight:v11];
      }
    }

    if ([(CarNavigationGuidanceSign *)self layoutType]== layoutType)
    {
      secondaryManeuverView = [(CarNavigationGuidanceSign *)self secondaryManeuverView];
      primaryManeuverView2 = [(CarNavigationGuidanceSign *)self primaryManeuverView];
      [secondaryManeuverView alignSecondarySignSubviewsToPrimaryManeuverView:primaryManeuverView2];
    }
  }
}

- (CarGuidanceCardSizeProviding)sizeProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_sizeProvider);

  return WeakRetained;
}

- (void)_updateCompressionStage
{
  [(CarNavigationGuidanceSign *)self availableWidth];
  if (v3 == 0.0)
  {
    v4 = sub_10007E168();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      destination = [(CarNavigationGuidanceSign *)self destination];
      if (destination > 4)
      {
        v6 = @".Unknown";
      }

      else
      {
        v6 = *(&off_101623A48 + destination);
      }

      v11 = v6;
      v23 = 138412546;
      v24 = v11;
      v25 = 2048;
      selfCopy4 = self;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "%@ navSign: %p, layoutSubviews, but availableWidth was 0. setting compressionStage to None.", &v23, 0x16u);
    }

    selfCopy5 = self;
    _desiredCompressionStage = 0;
  }

  else
  {
    v7 = v3;
    if (v3 != self->_widthAtLastCompressionUpdate)
    {
      v8 = sub_10007E168();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        destination2 = [(CarNavigationGuidanceSign *)self destination];
        if (destination2 > 4)
        {
          v10 = @".Unknown";
        }

        else
        {
          v10 = *(&off_101623A48 + destination2);
        }

        v14 = v10;
        widthAtLastCompressionUpdate = self->_widthAtLastCompressionUpdate;
        v23 = 138413058;
        v24 = v14;
        v25 = 2048;
        selfCopy4 = self;
        v27 = 2048;
        v28 = widthAtLastCompressionUpdate;
        v29 = 2048;
        v30 = v7;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "%@ navSign: %p, availableWidth has changed from %.1f to %.1f since last layout, we need to recalculate compression stages", &v23, 0x2Au);
      }

      [(CarNavigationGuidanceSign *)self _resetPrecalculatedCompressionSizes];
      self->_widthAtLastCompressionUpdate = v7;
      [(CarNavigationGuidanceSign *)self _heightForCompressionStage:-1 isMaximumCompression:0];
      v17 = v16;
      minimumCompressedContentLayoutGuideHeightConstraint = [(CarNavigationGuidanceSign *)self minimumCompressedContentLayoutGuideHeightConstraint];
      [minimumCompressedContentLayoutGuideHeightConstraint setConstant:v17];
    }

    v19 = sub_10007E168();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      destination3 = [(CarNavigationGuidanceSign *)self destination];
      if (destination3 > 4)
      {
        v21 = @".Unknown";
      }

      else
      {
        v21 = *(&off_101623A48 + destination3);
      }

      v22 = v21;
      v23 = 138412802;
      v24 = v22;
      v25 = 2048;
      selfCopy4 = self;
      v27 = 2048;
      v28 = v7;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEBUG, "%@ navSign: %p, layoutSubviews, availableWidth width is %1.f.", &v23, 0x20u);
    }

    _desiredCompressionStage = [(CarNavigationGuidanceSign *)self _desiredCompressionStage];
    selfCopy5 = self;
  }

  [(CarNavigationGuidanceSign *)selfCopy5 setCompressionStage:_desiredCompressionStage];
}

- (double)availableWidth
{
  sizeProvider = [(CarNavigationGuidanceSign *)self sizeProvider];
  [sizeProvider availableSize];
  v4 = v3;

  return v4;
}

- (double)dynamicPointScaleValue
{
  if ([(CarNavigationGuidanceSign *)self destination]- 3 > 1)
  {
    return 1.0;
  }

  [(CarNavigationGuidanceSign *)self _car_dynamicPointScaleValue];
  return result;
}

- (void)didMoveToWindow
{
  v7.receiver = self;
  v7.super_class = CarNavigationGuidanceSign;
  [(CarNavigationGuidanceSign *)&v7 didMoveToWindow];
  window = [(CarNavigationGuidanceSign *)self window];

  if (window)
  {
    objc_initWeak(&location, self);
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_100A3FDC0;
    v4[3] = &unk_101661B98;
    objc_copyWeak(&v5, &location);
    dispatch_async(&_dispatch_main_q, v4);
    objc_destroyWeak(&v5);
    objc_destroyWeak(&location);
  }
}

- (NSString)description
{
  v9.receiver = self;
  v9.super_class = CarNavigationGuidanceSign;
  v3 = [(CarNavigationGuidanceSign *)&v9 description];
  destination = [(CarNavigationGuidanceSign *)self destination];
  if (destination > 4)
  {
    v5 = @".Unknown";
  }

  else
  {
    v5 = *(&off_101623A48 + destination);
  }

  v6 = v5;
  v7 = [NSString stringWithFormat:@"%@ %@", v3, v6];

  return v7;
}

- (void)_handleCarScreenSizeChange
{
  v3 = sub_10007E168();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    destination = [(CarNavigationGuidanceSign *)self destination];
    if (destination > 4)
    {
      v5 = @".Unknown";
    }

    else
    {
      v5 = *(&off_101623A48 + destination);
    }

    v6 = v5;
    v8 = 138412546;
    v9 = v6;
    v10 = 2048;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "%@ navSign: %p, _handleCarScreenSizeChange", &v8, 0x16u);
  }

  sizeProvider = [(CarNavigationGuidanceSign *)self sizeProvider];
  -[CarNavigationGuidanceSign setLayoutType:](self, "setLayoutType:", [sizeProvider maneuverViewLayoutType]);
}

- (void)updateWithGroupAnimation:(id)animation
{
  animationCopy = animation;
  v5 = objc_opt_new();
  v6 = objc_opt_new();
  v7 = objc_opt_new();
  v8 = sub_10007E168();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    primaryManeuver = [(CarNavigationGuidanceSign *)self primaryManeuver];
    primaryManeuver2 = [(CarNavigationGuidanceSign *)self primaryManeuver];
    guidance = [primaryManeuver2 guidance];
    signID = [guidance signID];
    *buf = 134218498;
    selfCopy = self;
    v27 = 2112;
    v28 = primaryManeuver;
    v29 = 2112;
    v30 = signID;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%p: updateWithGroupAnimation in primary sign %@ (%@)", buf, 0x20u);
  }

  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100A3B4CC;
  v21[3] = &unk_101656A00;
  v21[4] = self;
  v22 = v7;
  v23 = v5;
  v24 = v6;
  v16[4] = self;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100A3C458;
  v17[3] = &unk_101656A00;
  v17[4] = self;
  v18 = v23;
  v19 = v24;
  v20 = v22;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100A3C600;
  v16[3] = &unk_101661738;
  v13 = v22;
  v14 = v24;
  v15 = v23;
  [animationCopy addPreparation:v21 animations:v17 completion:v16];
}

- (void)setLayoutType:(unint64_t)type
{
  if ([(CarNavigationGuidanceSign *)self layoutType]!= type)
  {
    self->_layoutType = type;
    v5 = sub_10007E168();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      destination = [(CarNavigationGuidanceSign *)self destination];
      if (destination > 4)
      {
        v7 = @".Unknown";
      }

      else
      {
        v7 = *(&off_101623A48 + destination);
      }

      v8 = v7;
      layoutType = [(CarNavigationGuidanceSign *)self layoutType];
      if (layoutType > 2)
      {
        v10 = @".Unknown";
      }

      else
      {
        v10 = *(&off_101656260 + layoutType);
      }

      v11 = v10;
      v18 = 138412546;
      v19 = v8;
      v20 = 2112;
      v21 = v11;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "%@ navSign layoutType changed to %@. Updating carManeuver views.", &v18, 0x16u);
    }

    primaryManeuver = [(CarNavigationGuidanceSign *)self primaryManeuver];
    [primaryManeuver setLayoutType:{-[CarNavigationGuidanceSign layoutType](self, "layoutType")}];

    nextPrimaryManeuver = [(CarNavigationGuidanceSign *)self nextPrimaryManeuver];
    [nextPrimaryManeuver setLayoutType:{-[CarNavigationGuidanceSign layoutType](self, "layoutType")}];

    secondaryManeuver = [(CarNavigationGuidanceSign *)self secondaryManeuver];
    [secondaryManeuver setLayoutType:{-[CarNavigationGuidanceSign layoutType](self, "layoutType")}];

    nextSecondaryManeuver = [(CarNavigationGuidanceSign *)self nextSecondaryManeuver];
    [nextSecondaryManeuver setLayoutType:{-[CarNavigationGuidanceSign layoutType](self, "layoutType")}];

    secondaryManeuverView = [(CarNavigationGuidanceSign *)self secondaryManeuverView];
    primaryManeuverView = [(CarNavigationGuidanceSign *)self primaryManeuverView];
    [secondaryManeuverView alignSecondarySignSubviewsToPrimaryManeuverView:primaryManeuverView];
  }
}

- (void)_replaceSecondaryViewManeuver:(id)maneuver initialConstraints:(id)constraints finalConstraints:(id)finalConstraints
{
  maneuverCopy = maneuver;
  finalConstraintsCopy = finalConstraints;
  constraintsCopy = constraints;
  v11 = sub_10007E168();
  if (!os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    goto LABEL_11;
  }

  selfCopy = self;
  if (!selfCopy)
  {
    selfCopy = @"<nil>";
    goto LABEL_10;
  }

  v13 = objc_opt_class();
  v14 = NSStringFromClass(v13);
  if (objc_opt_respondsToSelector())
  {
    v15 = [(CarNavigationGuidanceSign *)selfCopy performSelector:"accessibilityIdentifier"];
    v16 = v15;
    if (v15 && ![v15 isEqualToString:v14])
    {
      selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v14, selfCopy, v16];

      goto LABEL_8;
    }
  }

  selfCopy = [NSString stringWithFormat:@"%@<%p>", v14, selfCopy];
LABEL_8:

LABEL_10:
  *buf = 138543362;
  v36 = selfCopy;
  _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "[%{public}@] _replaceSecondaryViewManeuver.", buf, 0xCu);

LABEL_11:
  v18 = objc_opt_new();
  if (maneuverCopy)
  {
    [maneuverCopy setTranslatesAutoresizingMaskIntoConstraints:0];
    [(CarNavigationGuidanceSign *)self _prepareManeuverView:maneuverCopy];
    secondaryView = [(CarNavigationGuidanceSign *)self secondaryView];
    [secondaryView setHidden:0];

    secondaryViewHidden = [(CarNavigationGuidanceSign *)self secondaryViewHidden];
    hairlineView = [(CarNavigationGuidanceSign *)self hairlineView];
    [hairlineView setHidden:secondaryViewHidden];

    [maneuverCopy setHidden:{-[CarNavigationGuidanceSign secondaryViewHidden](self, "secondaryViewHidden")}];
    secondaryView2 = [(CarNavigationGuidanceSign *)self secondaryView];
    [secondaryView2 addSubview:maneuverCopy];

    secondaryView3 = [(CarNavigationGuidanceSign *)self secondaryView];
    LODWORD(v24) = 1148846080;
    LODWORD(v25) = 1148846080;
    LODWORD(v26) = 1148846080;
    LODWORD(v27) = 1148846080;
    v28 = [maneuverCopy _maps_constraintsForCenteringInView:secondaryView3 edgeInsets:UIEdgeInsetsZero.top priorities:{UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right, v24, v25, v26, v27}];
    [v18 addObjectsFromArray:v28];

    secondaryViewConstraints = [(CarNavigationGuidanceSign *)self secondaryViewConstraints];
    [NSLayoutConstraint activateConstraints:secondaryViewConstraints];
  }

  else
  {
    secondaryView4 = [(CarNavigationGuidanceSign *)self secondaryView];
    [secondaryView4 setHidden:1];

    hairlineView2 = [(CarNavigationGuidanceSign *)self hairlineView];
    [hairlineView2 setHidden:1];

    secondaryViewConstraints = [(CarNavigationGuidanceSign *)self secondaryViewConstraints];
    [NSLayoutConstraint deactivateConstraints:secondaryViewConstraints];
  }

  if ([(CarNavigationGuidanceSign *)self secondaryViewHidden])
  {
    v32 = 0.0;
  }

  else
  {
    v32 = 200.0;
  }

  secondaryViewHeightConstraint = [(CarNavigationGuidanceSign *)self secondaryViewHeightConstraint];
  [secondaryViewHeightConstraint setConstant:v32];

  [constraintsCopy addObjectsFromArray:v18];
  [finalConstraintsCopy addObjectsFromArray:v18];

  secondaryManeuver = [(CarNavigationGuidanceSign *)self secondaryManeuver];
  [secondaryManeuver setStopUpdatingCompressionStage:1];
}

- (void)_replacePrimaryViewManeuver:(id)maneuver initialConstraints:(id)constraints finalConstraints:(id)finalConstraints slide:(BOOL)slide
{
  slideCopy = slide;
  maneuverCopy = maneuver;
  constraintsCopy = constraints;
  finalConstraintsCopy = finalConstraints;
  v12 = maneuverCopy;
  primaryManeuver = [(CarNavigationGuidanceSign *)self primaryManeuver];
  selfCopy = self;
  primaryView = [(CarNavigationGuidanceSign *)self primaryView];
  v15 = sub_10007E168();
  v112 = primaryManeuver;
  v109 = constraintsCopy;
  if (!os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    goto LABEL_13;
  }

  selfCopy2 = self;
  if (!selfCopy2)
  {
    selfCopy2 = @"<nil>";
    goto LABEL_10;
  }

  v17 = objc_opt_class();
  v18 = NSStringFromClass(v17);
  if (objc_opt_respondsToSelector())
  {
    v19 = [(CarNavigationGuidanceSign *)selfCopy2 performSelector:"accessibilityIdentifier"];
    v20 = v19;
    if (v19 && ![v19 isEqualToString:v18])
    {
      selfCopy2 = [NSString stringWithFormat:@"%@<%p, %@>", v18, selfCopy2, v20];

      goto LABEL_8;
    }
  }

  selfCopy2 = [NSString stringWithFormat:@"%@<%p>", v18, selfCopy2];
LABEL_8:

LABEL_10:
  guidance = [v12 guidance];
  signID = [guidance signID];
  guidance2 = [primaryManeuver guidance];
  signID2 = [guidance2 signID];
  v26 = signID2;
  *buf = 138544642;
  v27 = @"NO";
  *&buf[4] = selfCopy2;
  if (slideCopy)
  {
    v27 = @"YES";
  }

  *&buf[12] = 2112;
  *&buf[14] = v12;
  *&buf[22] = 2112;
  v120 = signID;
  v121 = 2112;
  v122 = primaryManeuver;
  v123 = 2112;
  v124 = signID2;
  v125 = 2112;
  v126 = v27;
  v28 = v27;
  _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "[%{public}@] _replacePrimaryViewManeuver incoming: %@ (%@) outgoing: %@ (%@) shouldSlide: %@", buf, 0x3Eu);

  primaryManeuver = v112;
  constraintsCopy = v109;
LABEL_13:

  if (v12)
  {
    subviews = [primaryView subviews];
    v30 = sub_1000282CC(subviews, &stru_1016325B0);

    v104 = v30;
    v103 = finalConstraintsCopy;
    v105 = primaryView;
    if ([v30 count] >= 2)
    {
      v31 = sub_10006D178();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        *&buf[4] = "[CarNavigationGuidanceSign _replacePrimaryViewManeuver:initialConstraints:finalConstraints:slide:]";
        *&buf[12] = 2080;
        *&buf[14] = "CarNavigationGuidanceSign.m";
        *&buf[22] = 1024;
        LODWORD(v120) = 707;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion reached unexpectedly!", buf, 0x1Cu);
      }

      if (sub_100E03634())
      {
        v32 = sub_10006D178();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          v33 = +[NSThread callStackSymbols];
          *buf = 138412290;
          *&buf[4] = v33;
          _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
        }
      }

      v34 = sub_10007E168();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_FAULT))
      {
        destination = [(CarNavigationGuidanceSign *)selfCopy destination];
        if (destination > 4)
        {
          v36 = @".Unknown";
        }

        else
        {
          v36 = *(&off_101623A48 + destination);
        }

        v40 = v36;
        recursiveDescription = [(CarNavigationGuidanceSign *)selfCopy recursiveDescription];
        *buf = 138412802;
        *&buf[4] = v40;
        *&buf[12] = 2048;
        *&buf[14] = selfCopy;
        *&buf[22] = 2112;
        v120 = recursiveDescription;
        _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_FAULT, "%@ navSign: %p, _replacePrimaryViewManeuver found lingering views in primaryView -> will forcefully remove them. view hierarchy: %@", buf, 0x20u);
      }

      v116 = 0u;
      v117 = 0u;
      v114 = 0u;
      v115 = 0u;
      v42 = v104;
      v43 = [v42 countByEnumeratingWithState:&v114 objects:v118 count:16];
      if (v43)
      {
        v44 = v43;
        v45 = *v115;
        do
        {
          for (i = 0; i != v44; i = i + 1)
          {
            if (*v115 != v45)
            {
              objc_enumerationMutation(v42);
            }

            v47 = *(*(&v114 + 1) + 8 * i);
            if (v47 != primaryManeuver)
            {
              v48 = sub_10007E168();
              if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
              {
                destination2 = [(CarNavigationGuidanceSign *)selfCopy destination];
                v50 = @".Unknown";
                if (destination2 <= 4)
                {
                  v50 = *(&off_101623A48 + destination2);
                }

                v51 = v50;
                *buf = 138412802;
                *&buf[4] = v51;
                *&buf[12] = 2048;
                *&buf[14] = selfCopy;
                *&buf[22] = 2112;
                v120 = v47;
                _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_ERROR, "%@ navSign: %p, will remove lingering view: %@", buf, 0x20u);

                primaryManeuver = v112;
              }

              [v47 removeFromSuperview];
            }
          }

          v44 = [v42 countByEnumeratingWithState:&v114 objects:v118 count:16];
        }

        while (v44);
      }

      constraintsCopy = v109;
      finalConstraintsCopy = v103;
      primaryView = v105;
    }

    [v12 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(CarNavigationGuidanceSign *)selfCopy _prepareManeuverView:v12];
    primaryView2 = [(CarNavigationGuidanceSign *)selfCopy primaryView];
    [primaryView2 addSubview:v12];

    if (slideCopy)
    {
      v57 = primaryView;
      v58 = v12;
      topAnchor = [v58 topAnchor];
      topAnchor2 = [v57 topAnchor];
      v102 = [topAnchor constraintEqualToAnchor:topAnchor2];
      *buf = v102;
      leadingAnchor = [v58 leadingAnchor];
      trailingAnchor = [v57 trailingAnchor];
      v61 = [leadingAnchor constraintEqualToAnchor:trailingAnchor];
      *&buf[8] = v61;
      heightAnchor = [v58 heightAnchor];
      [v58 bounds];
      v63 = [heightAnchor constraintEqualToConstant:CGRectGetHeight(v127)];
      *&buf[16] = v63;
      widthAnchor = [v58 widthAnchor];

      [v57 bounds];
      v66 = v65;
      v68 = v67;
      v70 = v69;
      v72 = v71;

      v128.origin.x = v66;
      v128.origin.y = v68;
      v128.size.width = v70;
      v128.size.height = v72;
      v73 = [widthAnchor constraintEqualToConstant:CGRectGetWidth(v128)];
      v120 = v73;
      v74 = [NSArray arrayWithObjects:buf count:4];

      constraintsCopy = v109;
      finalConstraintsCopy = v103;

      [v109 addObjectsFromArray:v74];
      if (!v112)
      {
LABEL_52:
        LODWORD(v75) = 1148846080;
        primaryView = v105;
        LODWORD(v76) = 1148846080;
        LODWORD(v77) = 1148846080;
        LODWORD(v78) = 1148846080;
        v99 = [v12 _maps_constraintsForCenteringInView:v105 edgeInsets:UIEdgeInsetsZero.top priorities:{UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right, v75, v76, v77, v78}];
        [(CarNavigationGuidanceSign *)selfCopy setPrimaryManeuverConstraints:v99];

        primaryManeuverConstraints = [(CarNavigationGuidanceSign *)selfCopy primaryManeuverConstraints];
        [finalConstraintsCopy addObjectsFromArray:primaryManeuverConstraints];

        primaryManeuver2 = [(CarNavigationGuidanceSign *)selfCopy primaryManeuver];
        [primaryManeuver2 setStopUpdatingCompressionStage:1];

        primaryManeuver = v112;
        goto LABEL_53;
      }

      v79 = v57;
      v80 = v112;
      topAnchor3 = [v80 topAnchor];
      topAnchor4 = [v79 topAnchor];
      v108 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
      *buf = v108;
      trailingAnchor2 = [v80 trailingAnchor];
      leadingAnchor2 = [v79 leadingAnchor];
      v84 = [trailingAnchor2 constraintEqualToAnchor:leadingAnchor2];
      *&buf[8] = v84;
      heightAnchor2 = [v80 heightAnchor];
      [v80 bounds];
      v86 = [heightAnchor2 constraintEqualToConstant:CGRectGetHeight(v129)];
      *&buf[16] = v86;
      widthAnchor2 = [v80 widthAnchor];

      [v79 bounds];
      v89 = v88;
      v91 = v90;
      v93 = v92;
      v95 = v94;

      v130.origin.x = v89;
      v130.origin.y = v91;
      v130.size.width = v93;
      v130.size.height = v95;
      v96 = [widthAnchor2 constraintEqualToConstant:CGRectGetWidth(v130)];
      v120 = v96;
      v97 = [NSArray arrayWithObjects:buf count:4];

      constraintsCopy = v109;
      finalConstraintsCopy = v103;

      v98 = v103;
    }

    else
    {
      LODWORD(v53) = 1148846080;
      LODWORD(v54) = 1148846080;
      LODWORD(v55) = 1148846080;
      LODWORD(v56) = 1148846080;
      v97 = [v12 _maps_constraintsForCenteringInView:primaryView edgeInsets:UIEdgeInsetsZero.top priorities:{UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right, v53, v54, v55, v56}];
      v98 = constraintsCopy;
    }

    [v98 addObjectsFromArray:v97];

    goto LABEL_52;
  }

  v37 = sub_10006D178();
  if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    *&buf[4] = "[CarNavigationGuidanceSign _replacePrimaryViewManeuver:initialConstraints:finalConstraints:slide:]";
    *&buf[12] = 2080;
    *&buf[14] = "CarNavigationGuidanceSign.m";
    *&buf[22] = 1024;
    LODWORD(v120) = 693;
    _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion reached unexpectedly!", buf, 0x1Cu);
  }

  if (sub_100E03634())
  {
    v38 = sub_10006D178();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      v39 = +[NSThread callStackSymbols];
      *buf = 138412290;
      *&buf[4] = v39;
      _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
    }
  }

  [primaryManeuver setStopUpdatingCompressionStage:1];
  [primaryManeuver removeFromSuperview];
LABEL_53:
}

- (double)complementarySignHeightForManeuverView:(id)view
{
  viewCopy = view;
  secondaryManeuverView = [(CarNavigationGuidanceSign *)self secondaryManeuverView];
  Height = 0.0;
  if (!secondaryManeuverView)
  {
    hairlineView = [(CarNavigationGuidanceSign *)self hairlineView];
    [hairlineView frame];
    Height = CGRectGetHeight(v12);
  }

  variant = [viewCopy variant];
  if (variant == 2)
  {
    [(CarNavigationGuidanceSign *)self primaryManeuverView];
  }

  else
  {
    [(CarNavigationGuidanceSign *)self secondaryManeuverView];
  }
  v9 = ;
  [v9 frame];
  v10 = CGRectGetHeight(v13);

  return v10 + Height;
}

- (void)_prepareManeuverView:(id)view
{
  viewCopy = view;
  sizeProvider = [(CarNavigationGuidanceSign *)self sizeProvider];
  [sizeProvider availableSize];
  v7 = v6;
  v9 = v8;

  v10 = [[UIView alloc] initWithFrame:{0.0, 0.0, v7, 1.79769313e308}];
  [v10 addSubview:viewCopy];
  topAnchor = [viewCopy topAnchor];
  topAnchor2 = [v10 topAnchor];
  v11 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v38[0] = v11;
  leadingAnchor = [viewCopy leadingAnchor];
  leadingAnchor2 = [v10 leadingAnchor];
  v14 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v38[1] = v14;
  trailingAnchor = [viewCopy trailingAnchor];
  trailingAnchor2 = [v10 trailingAnchor];
  v17 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v38[2] = v17;
  v18 = [NSArray arrayWithObjects:v38 count:3];

  [NSLayoutConstraint activateConstraints:v18];
  [v10 setNeedsLayout];
  [v10 layoutIfNeeded];
  [(CarNavigationGuidanceSign *)self complementarySignHeightForManeuverView:viewCopy];
  v20 = v9 - v19;
  [viewCopy frame];
  if (v21 > v20)
  {
    [viewCopy setCompressionStage:{objc_msgSend(viewCopy, "compressionStageForSize:", v7, v9)}];
    [v10 setNeedsLayout];
    [v10 layoutIfNeeded];
  }

  [NSLayoutConstraint deactivateConstraints:v18];
  v22 = sub_10007E168();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
  {
    destination = [(CarNavigationGuidanceSign *)self destination];
    if (destination > 4)
    {
      v24 = @".Unknown";
    }

    else
    {
      v24 = *(&off_101623A48 + destination);
    }

    v25 = v24;
    v39.width = v7;
    v39.height = v9;
    v26 = NSStringFromCGSize(v39);
    *buf = 138413058;
    v31 = v25;
    v32 = 2048;
    selfCopy = self;
    v34 = 2112;
    v35 = v26;
    v36 = 2048;
    compressionStage = [(CarNavigationGuidanceSign *)self compressionStage];
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEBUG, "%@ navSign: %p, _prepareManeuverView. for availableSize: %@, with compressionStage: %lu", buf, 0x2Au);
  }
}

- (double)maxAvailableHeightForJunctionView:(double)view
{
  v4 = 0.0;
  if ([(CarNavigationGuidanceSign *)self destination]!= 2 && [(CarNavigationGuidanceSign *)self destination]- 3 >= 2 && ![(CarNavigationGuidanceSign *)self junctionViewHidden]&& ![(CarNavigationGuidanceSign *)self junctionViewTemporarilyHidden])
  {
    sizeProvider = [(CarNavigationGuidanceSign *)self sizeProvider];
    [sizeProvider availableSize];
    v7 = v6;

    primaryManeuverView = [(CarNavigationGuidanceSign *)self primaryManeuverView];
    [primaryManeuverView frame];
    Height = CGRectGetHeight(v17);
    hairlineView = [(CarNavigationGuidanceSign *)self hairlineView];
    [hairlineView frame];
    v11 = v7 - (Height + CGRectGetHeight(v18));

    v12 = +[CarDisplayController sharedInstance];
    screenTraitCollection = [v12 screenTraitCollection];
    [screenTraitCollection displayScale];
    v15 = v14;

    return floor(v15 * v11) / v15;
  }

  return v4;
}

- (void)hideJunctionViewAnimated:(BOOL)animated
{
  animatedCopy = animated;
  v5 = sub_10007E168();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    destination = [(CarNavigationGuidanceSign *)self destination];
    if (destination > 4)
    {
      v7 = @".Unknown";
    }

    else
    {
      v7 = *(&off_101623A48 + destination);
    }

    v8 = v7;
    v9 = @"NO";
    if (animatedCopy)
    {
      v9 = @"YES";
    }

    v10 = v9;
    *buf = 138412802;
    v14 = v8;
    v15 = 2048;
    selfCopy = self;
    v17 = 2112;
    v18 = v10;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "%@ navSign: %p, hideJunctionViewAnimated: %@", buf, 0x20u);
  }

  [(CarNavigationGuidanceSign *)self setJunctionViewTemporarilyHidden:1];
  if (animatedCopy)
  {
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100A3E2F8;
    v12[3] = &unk_101661B18;
    v12[4] = self;
    [UIView animateWithDuration:v12 animations:0.4];
  }

  else
  {
    junctionView = [(CarNavigationGuidanceSign *)self junctionView];
    [junctionView layoutIfNeeded];

    [(CarNavigationGuidanceSign *)self layoutIfNeeded];
  }
}

- (void)showJunctionViewAnimated:(BOOL)animated
{
  animatedCopy = animated;
  v5 = sub_10007E168();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    destination = [(CarNavigationGuidanceSign *)self destination];
    if (destination > 4)
    {
      v7 = @".Unknown";
    }

    else
    {
      v7 = *(&off_101623A48 + destination);
    }

    v8 = v7;
    v9 = @"NO";
    if (animatedCopy)
    {
      v9 = @"YES";
    }

    v10 = v9;
    *buf = 138412802;
    v13 = v8;
    v14 = 2048;
    selfCopy = self;
    v16 = 2112;
    v17 = v10;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "%@ navSign: %p, showJunctionViewAnimated: %@", buf, 0x20u);
  }

  [(CarNavigationGuidanceSign *)self setJunctionViewTemporarilyHidden:0];
  if (animatedCopy)
  {
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100A3E4A4;
    v11[3] = &unk_101661B18;
    v11[4] = self;
    [UIView animateWithDuration:v11 animations:0.4];
  }

  else
  {
    [(CarNavigationGuidanceSign *)self layoutIfNeeded];
  }
}

- (void)setJunctionViewInfo:(id)info
{
  infoCopy = info;
  if (self->_junctionViewController)
  {
    v9 = infoCopy;
    sizeProvider = [(CarNavigationGuidanceSign *)self sizeProvider];
    -[CarNavigationGuidanceSign setLayoutType:](self, "setLayoutType:", [sizeProvider maneuverViewLayoutType]);

    infoCopy = v9;
    if (self->_junctionViewInfo != v9)
    {
      objc_storeStrong(&self->_junctionViewInfo, info);
      junctionViewInfo = self->_junctionViewInfo;
      junctionViewController = [(CarNavigationGuidanceSign *)self junctionViewController];
      [junctionViewController setJunctionViewInfo:junctionViewInfo];

      infoCopy = v9;
    }
  }
}

- (void)refreshJunctionView
{
  junctionView = [(CarNavigationGuidanceSign *)self junctionView];
  [junctionView setNeedsLayout];
}

- (void)setCompressionStage:(unint64_t)stage
{
  primaryManeuver = [(CarNavigationGuidanceSign *)self primaryManeuver];
  compressionStage = [primaryManeuver compressionStage];

  secondaryManeuver = [(CarNavigationGuidanceSign *)self secondaryManeuver];
  compressionStage2 = [secondaryManeuver compressionStage];

  self->_compressionStage = stage;
  secondaryGuidanceSignID = [(CarNavigationGuidanceSign *)self secondaryGuidanceSignID];

  junctionView = [(CarNavigationGuidanceSign *)self junctionView];
  if (junctionView)
  {
    junctionViewInfo = [(CarNavigationGuidanceSign *)self junctionViewInfo];
    v12 = junctionViewInfo != 0;
  }

  else
  {
    v12 = 0;
  }

  [CarNavigationGuidanceSignCompression compressionForStage:stage hasSecondary:secondaryGuidanceSignID != 0 hasJunctionView:v12 forDestination:[(CarNavigationGuidanceSign *)self destination]];
  primaryManeuver2 = [(CarNavigationGuidanceSign *)self primaryManeuver];
  [primaryManeuver2 setCompressionStage:0];

  nextPrimaryManeuver = [(CarNavigationGuidanceSign *)self nextPrimaryManeuver];
  [nextPrimaryManeuver setCompressionStage:0];

  v15 = sub_10007E168();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    destination = [(CarNavigationGuidanceSign *)self destination];
    if (destination > 4)
    {
      v17 = @".Unknown";
    }

    else
    {
      v17 = *(&off_101623A48 + destination);
    }

    v18 = v17;
    compressionStage = self->_compressionStage;
    *buf = 138413570;
    v26 = v18;
    v27 = 2048;
    selfCopy = self;
    v29 = 2048;
    v30 = compressionStage;
    v31 = 2048;
    stageCopy = stage;
    v33 = 2048;
    v34 = 0;
    v35 = 2048;
    v36 = 0;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "%@ navSign: %p, setCompressionStage: before: %lu, after: %lu. primaryCompression: %lu, secondaryCompression: %lu", buf, 0x3Eu);
  }

  secondaryManeuver2 = [(CarNavigationGuidanceSign *)self secondaryManeuver];
  [secondaryManeuver2 setCompressionStage:0];

  nextSecondaryManeuver = [(CarNavigationGuidanceSign *)self nextSecondaryManeuver];
  [nextSecondaryManeuver setCompressionStage:0];

  [(CarNavigationGuidanceSign *)self setSecondaryViewHidden:0];
  [(CarNavigationGuidanceSign *)self setJunctionViewHidden:0];
  primaryManeuver3 = [(CarNavigationGuidanceSign *)self primaryManeuver];
  if (compressionStage != [primaryManeuver3 compressionStage])
  {

    goto LABEL_13;
  }

  secondaryManeuver3 = [(CarNavigationGuidanceSign *)self secondaryManeuver];
  compressionStage3 = [secondaryManeuver3 compressionStage];

  if (compressionStage2 != compressionStage3)
  {
LABEL_13:
    [(CarNavigationGuidanceSign *)self setNeedsLayout];
    [(CarNavigationGuidanceSign *)self layoutIfNeeded];
  }
}

- (void)_resetPrecalculatedCompressionSizes
{
  primaryManeuver = [(CarNavigationGuidanceSign *)self primaryManeuver];
  [primaryManeuver resetCompressionSizes];

  nextPrimaryManeuver = [(CarNavigationGuidanceSign *)self nextPrimaryManeuver];
  [nextPrimaryManeuver resetCompressionSizes];

  secondaryManeuver = [(CarNavigationGuidanceSign *)self secondaryManeuver];
  [secondaryManeuver resetCompressionSizes];

  nextSecondaryManeuver = [(CarNavigationGuidanceSign *)self nextSecondaryManeuver];
  [nextSecondaryManeuver resetCompressionSizes];
}

- (void)setBlurMode:(int64_t)mode
{
  primaryManeuver = [(CarNavigationGuidanceSign *)self primaryManeuver];
  [primaryManeuver setBlurMode:mode];

  nextPrimaryManeuver = [(CarNavigationGuidanceSign *)self nextPrimaryManeuver];
  [nextPrimaryManeuver setBlurMode:mode];

  secondaryManeuver = [(CarNavigationGuidanceSign *)self secondaryManeuver];
  [secondaryManeuver setBlurMode:mode];

  nextSecondaryManeuver = [(CarNavigationGuidanceSign *)self nextSecondaryManeuver];
  [nextSecondaryManeuver setBlurMode:mode];
}

- (void)setNextPrimaryManeuver:(id)maneuver
{
  maneuverCopy = maneuver;
  if (self->_nextPrimaryManeuver != maneuverCopy)
  {
    v6 = sub_10007E168();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      nextPrimaryManeuver = self->_nextPrimaryManeuver;
      v8 = 138412546;
      v9 = nextPrimaryManeuver;
      v10 = 2112;
      v11 = maneuverCopy;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Changing nextPrimaryManeuver from %@ to %@", &v8, 0x16u);
    }

    objc_storeStrong(&self->_nextPrimaryManeuver, maneuver);
  }
}

- (void)setPrimaryManeuver:(id)maneuver
{
  maneuverCopy = maneuver;
  if (self->_primaryManeuver != maneuverCopy)
  {
    v6 = sub_10007E168();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      primaryManeuver = self->_primaryManeuver;
      v8 = 138412546;
      v9 = primaryManeuver;
      v10 = 2112;
      v11 = maneuverCopy;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Changing primaryManeuver from %@ to %@", &v8, 0x16u);
    }

    objc_storeStrong(&self->_primaryManeuver, maneuver);
  }
}

- (void)setSecondaryGuidanceSignID:(id)d
{
  dCopy = d;
  if (self->_secondaryGuidanceSignID != dCopy)
  {
    v6 = sub_10007E168();
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
LABEL_9:

      objc_storeStrong(&self->_secondaryGuidanceSignID, d);
      goto LABEL_10;
    }

    selfCopy = self;
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    if (objc_opt_respondsToSelector())
    {
      v10 = [(CarNavigationGuidanceSign *)selfCopy performSelector:"accessibilityIdentifier"];
      v11 = v10;
      if (v10 && ![v10 isEqualToString:v9])
      {
        selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v9, selfCopy, v11];

        goto LABEL_8;
      }
    }

    selfCopy = [NSString stringWithFormat:@"%@<%p>", v9, selfCopy];
LABEL_8:

    secondaryGuidanceSignID = self->_secondaryGuidanceSignID;
    *buf = 138543874;
    v15 = selfCopy;
    v16 = 2112;
    v17 = secondaryGuidanceSignID;
    v18 = 2112;
    v19 = dCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "[%{public}@] Changing secondary sign ID from %@ to %@", buf, 0x20u);

    goto LABEL_9;
  }

LABEL_10:
}

- (void)setPrimaryGuidanceSignID:(id)d
{
  dCopy = d;
  if (self->_primaryGuidanceSignID != dCopy)
  {
    v6 = sub_10007E168();
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
LABEL_9:

      objc_storeStrong(&self->_primaryGuidanceSignID, d);
      goto LABEL_10;
    }

    selfCopy = self;
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    if (objc_opt_respondsToSelector())
    {
      v10 = [(CarNavigationGuidanceSign *)selfCopy performSelector:"accessibilityIdentifier"];
      v11 = v10;
      if (v10 && ![v10 isEqualToString:v9])
      {
        selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v9, selfCopy, v11];

        goto LABEL_8;
      }
    }

    selfCopy = [NSString stringWithFormat:@"%@<%p>", v9, selfCopy];
LABEL_8:

    primaryGuidanceSignID = self->_primaryGuidanceSignID;
    *buf = 138543874;
    v15 = selfCopy;
    v16 = 2112;
    v17 = primaryGuidanceSignID;
    v18 = 2112;
    v19 = dCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "[%{public}@] Changing primary sign ID from %@ to %@", buf, 0x20u);

    goto LABEL_9;
  }

LABEL_10:
}

- (void)setSecondaryGuidance:(id)guidance
{
  guidanceCopy = guidance;
  if (self->_secondaryGuidance != guidanceCopy)
  {
    v6 = sub_10007E168();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      secondaryGuidance = self->_secondaryGuidance;
      v8 = 138412546;
      v9 = secondaryGuidance;
      v10 = 2112;
      v11 = guidanceCopy;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Changing secondaryGuidance from %@ to %@", &v8, 0x16u);
    }

    objc_storeStrong(&self->_secondaryGuidance, guidance);
  }
}

- (void)setPrimaryGuidance:(id)guidance
{
  guidanceCopy = guidance;
  if (self->_primaryGuidance != guidanceCopy)
  {
    v6 = sub_10007E168();
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
LABEL_9:

      objc_storeStrong(&self->_primaryGuidance, guidance);
      goto LABEL_10;
    }

    selfCopy = self;
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    if (objc_opt_respondsToSelector())
    {
      v10 = [(CarNavigationGuidanceSign *)selfCopy performSelector:"accessibilityIdentifier"];
      v11 = v10;
      if (v10 && ![v10 isEqualToString:v9])
      {
        selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v9, selfCopy, v11];

        goto LABEL_8;
      }
    }

    selfCopy = [NSString stringWithFormat:@"%@<%p>", v9, selfCopy];
LABEL_8:

    primaryGuidance = self->_primaryGuidance;
    *buf = 138543874;
    v15 = selfCopy;
    v16 = 2112;
    v17 = primaryGuidance;
    v18 = 2112;
    v19 = guidanceCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "[%{public}@] Changing primaryGuidance from %@ to %@", buf, 0x20u);

    goto LABEL_9;
  }

LABEL_10:
}

- (void)setJunctionViewTemporarilyHidden:(BOOL)hidden
{
  if (self->_junctionViewTemporarilyHidden != hidden)
  {
    self->_junctionViewTemporarilyHidden = hidden;
    [(CarNavigationGuidanceSign *)self maxAvailableHeightForJunctionView:0.0];
    v6 = v5;
    junctionViewController = [(CarNavigationGuidanceSign *)self junctionViewController];
    [junctionViewController setAvailableHeight:v6];
  }
}

- (void)setJunctionViewHidden:(BOOL)hidden
{
  if (self->_junctionViewHidden != hidden)
  {
    self->_junctionViewHidden = hidden;
    [(CarNavigationGuidanceSign *)self maxAvailableHeightForJunctionView:0.0];
    v6 = v5;
    junctionViewController = [(CarNavigationGuidanceSign *)self junctionViewController];
    [junctionViewController setAvailableHeight:v6];
  }
}

- (void)setSecondaryViewHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  if ([(CarNavigationGuidanceSign *)self _shouldForceSecondaryManeuverViewHidden])
  {
    v5 = sub_10007E168();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      destination = [(CarNavigationGuidanceSign *)self destination];
      if (destination > 4)
      {
        v7 = @".Unknown";
      }

      else
      {
        v7 = *(&off_101623A48 + destination);
      }

      v8 = v7;
      v26 = 138412546;
      v27 = v8;
      v28 = 2048;
      selfCopy2 = self;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "%@ navSign: %p, forcing secondaryViewHidden for nav signs displayed in widgets.", &v26, 0x16u);
    }

    hiddenCopy = 1;
  }

  if (self->_secondaryViewHidden != hiddenCopy)
  {
    v9 = sub_10007E168();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      destination2 = [(CarNavigationGuidanceSign *)self destination];
      if (destination2 > 4)
      {
        v11 = @".Unknown";
      }

      else
      {
        v11 = *(&off_101623A48 + destination2);
      }

      v12 = v11;
      compressionStage = [(CarNavigationGuidanceSign *)self compressionStage];
      if (self->_secondaryViewHidden)
      {
        v14 = @"YES";
      }

      else
      {
        v14 = @"NO";
      }

      v15 = v14;
      if (hiddenCopy)
      {
        v16 = @"YES";
      }

      else
      {
        v16 = @"NO";
      }

      v17 = v16;
      v26 = 138413314;
      v27 = v12;
      v28 = 2048;
      selfCopy2 = self;
      v30 = 2048;
      v31 = compressionStage;
      v32 = 2112;
      v33 = v15;
      v34 = 2112;
      v35 = v17;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "%@ navSign: %p, compression: %lu. setSecondaryViewHidden: before: %@, after: %@", &v26, 0x34u);
    }

    self->_secondaryViewHidden = hiddenCopy;
    secondaryManeuver = [(CarNavigationGuidanceSign *)self secondaryManeuver];
    [secondaryManeuver setHidden:hiddenCopy];

    secondaryViewHidden = self->_secondaryViewHidden;
    nextSecondaryManeuver = [(CarNavigationGuidanceSign *)self nextSecondaryManeuver];
    [nextSecondaryManeuver setHidden:secondaryViewHidden];

    v21 = self->_secondaryViewHidden;
    hairlineView = [(CarNavigationGuidanceSign *)self hairlineView];
    [hairlineView setHidden:v21];

    LODWORD(v21) = self->_secondaryViewHidden;
    secondaryViewHeightConstraint = [(CarNavigationGuidanceSign *)self secondaryViewHeightConstraint];
    v24 = secondaryViewHeightConstraint;
    v25 = 200.0;
    if (v21)
    {
      v25 = 0.0;
    }

    [secondaryViewHeightConstraint setConstant:v25];
  }
}

- (BOOL)isPointInJunctionView:(CGPoint)view
{
  y = view.y;
  x = view.x;
  junctionViewInfo = [(CarNavigationGuidanceSign *)self junctionViewInfo];
  if (junctionViewInfo)
  {
    junctionView = [(CarNavigationGuidanceSign *)self junctionView];
    [junctionView bounds];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
    junctionView2 = [(CarNavigationGuidanceSign *)self junctionView];
    [(CarNavigationGuidanceSign *)self convertRect:junctionView2 fromView:v9, v11, v13, v15];
    v19.x = x;
    v19.y = y;
    v17 = CGRectContainsPoint(v20, v19);
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (double)_heightForCompressionStage:(unint64_t)stage isMaximumCompression:(BOOL *)compression
{
  secondaryGuidanceSignID = [(CarNavigationGuidanceSign *)self secondaryGuidanceSignID];

  junctionView = [(CarNavigationGuidanceSign *)self junctionView];
  if (junctionView)
  {
    junctionViewInfo = [(CarNavigationGuidanceSign *)self junctionViewInfo];
    v10 = junctionViewInfo != 0;
  }

  else
  {
    v10 = 0;
  }

  [CarNavigationGuidanceSignCompression compressionForStage:stage hasSecondary:secondaryGuidanceSignID != 0 hasJunctionView:v10 forDestination:[(CarNavigationGuidanceSign *)self destination]];
  primaryManeuverView = [(CarNavigationGuidanceSign *)self primaryManeuverView];
  [primaryManeuverView sizeForCompressionStage:0];
  v13 = v12;

  v14 = 0.0;
  v15 = 0.0;
  v16 = v13;
  if (![(CarNavigationGuidanceSign *)self _shouldForceSecondaryManeuverViewHidden])
  {
    secondaryManeuverView = [(CarNavigationGuidanceSign *)self secondaryManeuverView];
    v16 = v13;
    if (secondaryManeuverView)
    {

      secondaryManeuverView2 = [(CarNavigationGuidanceSign *)self secondaryManeuverView];
      [secondaryManeuverView2 sizeForCompressionStage:0];
      v15 = v19;

      v16 = v15 + v13;
      if (v15 > 0.0)
      {
        hairlineView = [(CarNavigationGuidanceSign *)self hairlineView];
        [hairlineView frame];
        v16 = CGRectGetHeight(v43) + v16;
      }
    }
  }

  if (v10)
  {
    junctionView2 = [(CarNavigationGuidanceSign *)self junctionView];
    [junctionView2 bounds];
    v14 = CGRectGetWidth(v44) * 0.352657005;

    v16 = v16 - v15 + v14;
  }

  if (compression)
  {
    *compression = 0;
  }

  v22 = sub_10007E168();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
  {
    destination = [(CarNavigationGuidanceSign *)self destination];
    if (destination > 4)
    {
      v24 = @".Unknown";
    }

    else
    {
      v24 = *(&off_101623A48 + destination);
    }

    v25 = v24;
    *buf = 138414082;
    v28 = v25;
    v29 = 2048;
    selfCopy = self;
    v31 = 2048;
    stageCopy = stage;
    v33 = 2080;
    v34 = "";
    v35 = 2048;
    v36 = v13;
    v37 = 2048;
    v38 = v15;
    v39 = 2048;
    v40 = v14;
    v41 = 2048;
    v42 = v16;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEBUG, "%@ navSign: %p, _heightForCompressionStage %lu%s, primary: %.1f, secondary: %.1f, junctionViewHeight: %.1f, total: %.1f", buf, 0x52u);
  }

  return v16;
}

- (void)_hideMiniSignAnimated:(BOOL)animated
{
  animatedCopy = animated;
  [(CarNavigationGuidanceSign *)self layoutIfNeeded];
  [(NSLayoutConstraint *)self->_primaryViewTopAnchorMiniSignConstraint setActive:0];
  [(NSLayoutConstraint *)self->_primaryViewTopAnchorRegularConstraint setActive:1];
  if (animatedCopy)
  {
    GEOConfigGetDouble();
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100A3FA64;
    v6[3] = &unk_101661B18;
    v6[4] = self;
    [UIView animateWithDuration:v6 animations:?];
  }

  else
  {
    miniSignHintLabel = self->_miniSignHintLabel;

    [(UILabel *)miniSignHintLabel setAlpha:0.0];
  }
}

- (void)_showMiniSign
{
  miniSignHintLabel = self->_miniSignHintLabel;
  v4 = *&CGAffineTransformIdentity.c;
  v5[0] = *&CGAffineTransformIdentity.a;
  v5[1] = v4;
  v5[2] = *&CGAffineTransformIdentity.tx;
  [(UILabel *)miniSignHintLabel setTransform:v5];
  [(UILabel *)self->_miniSignHintLabel setAlpha:1.0];
  [(NSLayoutConstraint *)self->_primaryViewTopAnchorMiniSignConstraint setActive:1];
  [(NSLayoutConstraint *)self->_primaryViewTopAnchorRegularConstraint setActive:0];
}

- (void)_updateMiniSignVisibility
{
  if (self->_signStyle == 1)
  {
    window = [(CarNavigationGuidanceSign *)self window];
    if (window && (GEOConfigGetBOOL() & 1) != 0)
    {
      miniSignAutoHideTimer = [(CarNavigationGuidanceSign *)self miniSignAutoHideTimer];

      if (!miniSignAutoHideTimer)
      {
        [(CarNavigationGuidanceSign *)self _showMiniSign];
        objc_initWeak(&location, self);
        GEOConfigGetDouble();
        v6 = v5;
        v7 = &_dispatch_main_q;
        v9 = _NSConcreteStackBlock;
        v10 = 3221225472;
        v11 = sub_100A3FD5C;
        v12 = &unk_1016616E8;
        objc_copyWeak(&v13, &location);
        v8 = [GCDTimer scheduledTimerWithTimeInterval:&_dispatch_main_q queue:&v9 block:v6];
        [(CarNavigationGuidanceSign *)self setMiniSignAutoHideTimer:v8, v9, v10, v11, v12];

        objc_destroyWeak(&v13);
        objc_destroyWeak(&location);
        return;
      }
    }

    else
    {
    }
  }

  [(CarNavigationGuidanceSign *)self _hideMiniSignAnimated:0];
}

- (void)setSignStyle:(int64_t)style
{
  if (self->_signStyle != style)
  {
    self->_signStyle = style;
    [(CarNavigationGuidanceSign *)self _updateMiniSignVisibility];
  }
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self name:@"CarDisplayDidChangeConnectedNotification" object:0];

  v4.receiver = self;
  v4.super_class = CarNavigationGuidanceSign;
  [(CarNavigationGuidanceSign *)&v4 dealloc];
}

- (CarNavigationGuidanceSign)initWithDestination:(unint64_t)destination
{
  v146.receiver = self;
  v146.super_class = CarNavigationGuidanceSign;
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  height = [(CarNavigationGuidanceSign *)&v146 initWithFrame:CGRectZero.origin.x, y, width, height];
  v8 = height;
  if (height)
  {
    [(CarNavigationGuidanceSign *)height setAccessibilityIdentifier:@"CarNavigationGuidanceSign"];
    destinationCopy = destination;
    v8->_destination = destination;
    destination = [(CarNavigationGuidanceSign *)v8 destination];
    v10 = destination - 1 < 2 || destination == 4;
    v11 = +[NSNotificationCenter defaultCenter];
    [v11 addObserver:v8 selector:"_handleCarScreenSizeChange" name:@"CarDisplayDidChangeConnectedNotification" object:0];

    v8->_compressionStage = 0;
    v12 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    miniSignHintLabel = v8->_miniSignHintLabel;
    v8->_miniSignHintLabel = v12;

    [(UILabel *)v8->_miniSignHintLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v8->_miniSignHintLabel setAccessibilityIdentifier:@"CarNavigationGuidanceSignMiniSignLabel"];
    [(UILabel *)v8->_miniSignHintLabel setNumberOfLines:0];
    LODWORD(v14) = 1148846080;
    [(UILabel *)v8->_miniSignHintLabel setContentCompressionResistancePriority:1 forAxis:v14];
    LODWORD(v15) = 1132068864;
    [(UILabel *)v8->_miniSignHintLabel setContentCompressionResistancePriority:0 forAxis:v15];
    LODWORD(v16) = 1148846080;
    [(UILabel *)v8->_miniSignHintLabel setContentHuggingPriority:0 forAxis:v16];
    v17 = +[CarDisplayController sharedInstance];
    supportsTouchInteractionModel = [v17 supportsTouchInteractionModel];

    v19 = +[NSBundle mainBundle];
    v20 = v19;
    if (supportsTouchInteractionModel)
    {
      v21 = @"[CarPlay Mini Sign] Tap for Full Guidance";
    }

    else
    {
      v21 = @"[CarPlay Mini Sign] Select for Full Guidance";
    }

    v22 = [v19 localizedStringForKey:v21 value:@"localized string not found" table:0];
    [(UILabel *)v8->_miniSignHintLabel setText:v22];

    [(UILabel *)v8->_miniSignHintLabel setTextAlignment:1];
    v23 = sub_10009FA44(v10);
    [(UILabel *)v8->_miniSignHintLabel setTextColor:v23];

    v24 = [UIFont systemFontOfSize:10.0 weight:UIFontWeightMedium];
    [(UILabel *)v8->_miniSignHintLabel setFont:v24];

    [(UILabel *)v8->_miniSignHintLabel setAlpha:0.0];
    [(CarNavigationGuidanceSign *)v8 addSubview:v8->_miniSignHintLabel];
    v25 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    primaryView = v8->_primaryView;
    v8->_primaryView = v25;

    [(UIView *)v8->_primaryView setAccessibilityIdentifier:@"CarNavigationGuidanceSignPrimaryView"];
    [(UIView *)v8->_primaryView setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v27) = 1148846080;
    [(UIView *)v8->_primaryView setContentHuggingPriority:1 forAxis:v27];
    [(CarNavigationGuidanceSign *)v8 addSubview:v8->_primaryView];
    topAnchor = [(UIView *)v8->_primaryView topAnchor];
    bottomAnchor = [(UILabel *)v8->_miniSignHintLabel bottomAnchor];
    v30 = [topAnchor constraintEqualToAnchor:bottomAnchor];
    primaryViewTopAnchorMiniSignConstraint = v8->_primaryViewTopAnchorMiniSignConstraint;
    v8->_primaryViewTopAnchorMiniSignConstraint = v30;

    topAnchor2 = [(UIView *)v8->_primaryView topAnchor];
    topAnchor3 = [(CarNavigationGuidanceSign *)v8 topAnchor];
    v34 = [topAnchor2 constraintEqualToAnchor:topAnchor3];
    primaryViewTopAnchorRegularConstraint = v8->_primaryViewTopAnchorRegularConstraint;
    v8->_primaryViewTopAnchorRegularConstraint = v34;

    v36 = [CarHairlineView hairlineViewAlongAxis:0];
    hairlineView = v8->_hairlineView;
    v8->_hairlineView = v36;

    [(CarHairlineView *)v8->_hairlineView setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v38) = 1148846080;
    [(CarHairlineView *)v8->_hairlineView setContentHuggingPriority:1 forAxis:v38];
    v39 = +[NSBundle mainBundle];
    v40 = [UIColor colorNamed:@"CarHairlineOverlayBackgroundColor" inBundle:v39 compatibleWithTraitCollection:0];

    [(CarHairlineView *)v8->_hairlineView setBackgroundColor:v40];
    [(CarHairlineView *)v8->_hairlineView setHidden:1];
    [(CarNavigationGuidanceSign *)v8 addSubview:v8->_hairlineView];
    v41 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    secondaryView = v8->_secondaryView;
    v8->_secondaryView = v41;

    [(UIView *)v8->_secondaryView setAccessibilityIdentifier:@"CarNavigationGuidanceSignSecondaryView"];
    [(UIView *)v8->_secondaryView setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v43) = 1148846080;
    [(UIView *)v8->_secondaryView setContentHuggingPriority:1 forAxis:v43];
    if (destination <= 4 && ((1 << destination) & 0x16) != 0)
    {
      v44 = +[UIColor tertiarySystemFillColor];
    }

    else
    {
      v44 = [UIColor colorWithWhite:1.0 alpha:0.150000006];
    }

    v45 = v44;
    [(UIView *)v8->_secondaryView setBackgroundColor:v44];

    [(UIView *)v8->_secondaryView setHidden:1];
    [(CarNavigationGuidanceSign *)v8 insertSubview:v8->_secondaryView belowSubview:v8->_primaryView];
    topAnchor4 = [(UILabel *)v8->_miniSignHintLabel topAnchor];
    topAnchor5 = [(CarNavigationGuidanceSign *)v8 topAnchor];
    v129 = [topAnchor4 constraintEqualToAnchor:topAnchor5 constant:9.0];
    v153[0] = v129;
    leadingAnchor = [(UILabel *)v8->_miniSignHintLabel leadingAnchor];
    leadingAnchor2 = [(CarNavigationGuidanceSign *)v8 leadingAnchor];
    v123 = [leadingAnchor constraintGreaterThanOrEqualToAnchor:leadingAnchor2 constant:9.0];
    v153[1] = v123;
    trailingAnchor = [(UILabel *)v8->_miniSignHintLabel trailingAnchor];
    trailingAnchor2 = [(CarNavigationGuidanceSign *)v8 trailingAnchor];
    v117 = [trailingAnchor constraintLessThanOrEqualToAnchor:trailingAnchor2 constant:-9.0];
    v153[2] = v117;
    centerXAnchor = [(UILabel *)v8->_miniSignHintLabel centerXAnchor];
    centerXAnchor2 = [(CarNavigationGuidanceSign *)v8 centerXAnchor];
    v47 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v153[3] = v47;
    v153[4] = v8->_primaryViewTopAnchorMiniSignConstraint;
    leadingAnchor3 = [(UIView *)v8->_primaryView leadingAnchor];
    leadingAnchor4 = [(CarNavigationGuidanceSign *)v8 leadingAnchor];
    v50 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
    v153[5] = v50;
    trailingAnchor3 = [(UIView *)v8->_primaryView trailingAnchor];
    trailingAnchor4 = [(CarNavigationGuidanceSign *)v8 trailingAnchor];
    v53 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
    v153[6] = v53;
    v54 = [NSArray arrayWithObjects:v153 count:7];
    v145 = [v54 mutableCopy];

    if (destinationCopy <= 1)
    {
      v55 = objc_alloc_init(NavJunctionViewController);
      junctionViewController = v8->_junctionViewController;
      v8->_junctionViewController = v55;

      [(NavJunctionViewController *)v8->_junctionViewController setDelegate:v8];
      [(NavJunctionViewController *)v8->_junctionViewController setLightModeSource:0];
      junctionView = [(CarNavigationGuidanceSign *)v8 junctionView];
      [junctionView setTranslatesAutoresizingMaskIntoConstraints:0];

      junctionView2 = [(CarNavigationGuidanceSign *)v8 junctionView];
      LODWORD(v59) = 1132068864;
      [junctionView2 setContentCompressionResistancePriority:1 forAxis:v59];

      junctionView3 = [(CarNavigationGuidanceSign *)v8 junctionView];
      LODWORD(v61) = 1132068864;
      [junctionView3 setContentCompressionResistancePriority:0 forAxis:v61];

      junctionView4 = [(CarNavigationGuidanceSign *)v8 junctionView];
      [junctionView4 setHidden:1];

      junctionView5 = [(CarNavigationGuidanceSign *)v8 junctionView];
      [(CarNavigationGuidanceSign *)v8 insertSubview:junctionView5 aboveSubview:v8->_secondaryView];

      junctionView6 = [(CarNavigationGuidanceSign *)v8 junctionView];
      leadingAnchor5 = [junctionView6 leadingAnchor];
      leadingAnchor6 = [(CarNavigationGuidanceSign *)v8 leadingAnchor];
      v130 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];
      v152[0] = v130;
      junctionView7 = [(CarNavigationGuidanceSign *)v8 junctionView];
      trailingAnchor5 = [junctionView7 trailingAnchor];
      trailingAnchor6 = [(CarNavigationGuidanceSign *)v8 trailingAnchor];
      v67 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6];
      v152[1] = v67;
      junctionView8 = [(CarNavigationGuidanceSign *)v8 junctionView];
      topAnchor6 = [junctionView8 topAnchor];
      bottomAnchor2 = [(UIView *)v8->_primaryView bottomAnchor];
      v71 = [topAnchor6 constraintEqualToAnchor:bottomAnchor2];
      v152[2] = v71;
      v72 = [NSArray arrayWithObjects:v152 count:3];
      [v145 addObjectsFromArray:v72];

      junctionView9 = [(CarNavigationGuidanceSign *)v8 junctionView];
      bottomAnchor3 = [junctionView9 bottomAnchor];
      bottomAnchor4 = [(CarNavigationGuidanceSign *)v8 bottomAnchor];
      v76 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
      v151 = v76;
      v77 = [NSArray arrayWithObjects:&v151 count:1];
      [(CarNavigationGuidanceSign *)v8 setJunctionViewConstraints:v77];
    }

    [NSLayoutConstraint activateConstraints:v145];
    bottomAnchor5 = [(UIView *)v8->_primaryView bottomAnchor];
    bottomAnchor6 = [(CarNavigationGuidanceSign *)v8 bottomAnchor];
    LODWORD(v80) = 1148846080;
    v81 = [bottomAnchor5 constraintEqualToAnchor:bottomAnchor6 constant:0.0 priority:v80];
    v150 = v81;
    v82 = [NSArray arrayWithObjects:&v150 count:1];
    [(CarNavigationGuidanceSign *)v8 setPrimaryViewOnlyConstraints:v82];

    heightAnchor = [(UIView *)v8->_secondaryView heightAnchor];
    v84 = [heightAnchor constraintLessThanOrEqualToConstant:200.0];
    secondaryViewHeightConstraint = v8->_secondaryViewHeightConstraint;
    v8->_secondaryViewHeightConstraint = v84;

    primaryViewOnlyConstraints = [(CarNavigationGuidanceSign *)v8 primaryViewOnlyConstraints];
    [NSLayoutConstraint activateConstraints:primaryViewOnlyConstraints];

    v149 = v8->_secondaryViewHeightConstraint;
    v87 = [NSArray arrayWithObjects:&v149 count:1];
    [NSLayoutConstraint activateConstraints:v87];

    bottomAnchor7 = [(UIView *)v8->_primaryView bottomAnchor];
    topAnchor7 = [(CarHairlineView *)v8->_hairlineView topAnchor];
    LODWORD(v88) = 1148846080;
    v137 = [bottomAnchor7 constraintEqualToAnchor:topAnchor7 constant:0.0 priority:v88];
    v148[0] = v137;
    leftAnchor = [(CarHairlineView *)v8->_hairlineView leftAnchor];
    leftAnchor2 = [(CarNavigationGuidanceSign *)v8 leftAnchor];
    v128 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
    v148[1] = v128;
    rightAnchor = [(CarHairlineView *)v8->_hairlineView rightAnchor];
    rightAnchor2 = [(CarNavigationGuidanceSign *)v8 rightAnchor];
    v122 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
    v148[2] = v122;
    bottomAnchor8 = [(CarHairlineView *)v8->_hairlineView bottomAnchor];
    topAnchor8 = [(UIView *)v8->_secondaryView topAnchor];
    LODWORD(v89) = 1148846080;
    v118 = [bottomAnchor8 constraintEqualToAnchor:topAnchor8 constant:0.0 priority:v89];
    v148[3] = v118;
    leadingAnchor7 = [(UIView *)v8->_secondaryView leadingAnchor];
    leadingAnchor8 = [(CarNavigationGuidanceSign *)v8 leadingAnchor];
    v91 = [leadingAnchor7 constraintEqualToAnchor:leadingAnchor8];
    v148[4] = v91;
    trailingAnchor7 = [(UIView *)v8->_secondaryView trailingAnchor];
    trailingAnchor8 = [(CarNavigationGuidanceSign *)v8 trailingAnchor];
    v94 = [trailingAnchor7 constraintEqualToAnchor:trailingAnchor8];
    v148[5] = v94;
    bottomAnchor9 = [(UIView *)v8->_secondaryView bottomAnchor];
    bottomAnchor10 = [(CarNavigationGuidanceSign *)v8 bottomAnchor];
    LODWORD(v97) = 1148846080;
    v98 = [bottomAnchor9 constraintEqualToAnchor:bottomAnchor10 constant:0.0 priority:v97];
    v148[6] = v98;
    v99 = [NSArray arrayWithObjects:v148 count:7];
    [(CarNavigationGuidanceSign *)v8 setSecondaryViewConstraints:v99];

    v100 = objc_alloc_init(UILayoutGuide);
    minimumCompressedContentLayoutGuide = v8->_minimumCompressedContentLayoutGuide;
    v8->_minimumCompressedContentLayoutGuide = v100;

    [(CarNavigationGuidanceSign *)v8 addLayoutGuide:v8->_minimumCompressedContentLayoutGuide];
    heightAnchor2 = [(UILayoutGuide *)v8->_minimumCompressedContentLayoutGuide heightAnchor];
    v103 = [heightAnchor2 constraintEqualToConstant:0.0];
    [(CarNavigationGuidanceSign *)v8 setMinimumCompressedContentLayoutGuideHeightConstraint:v103];

    leadingAnchor9 = [(UILayoutGuide *)v8->_minimumCompressedContentLayoutGuide leadingAnchor];
    leadingAnchor10 = [(CarNavigationGuidanceSign *)v8 leadingAnchor];
    v104 = [leadingAnchor9 constraintEqualToAnchor:leadingAnchor10];
    v147[0] = v104;
    trailingAnchor9 = [(CarNavigationGuidanceSign *)v8 trailingAnchor];
    trailingAnchor10 = [(UILayoutGuide *)v8->_minimumCompressedContentLayoutGuide trailingAnchor];
    v107 = [trailingAnchor9 constraintEqualToAnchor:trailingAnchor10];
    v147[1] = v107;
    topAnchor9 = [(UILayoutGuide *)v8->_minimumCompressedContentLayoutGuide topAnchor];
    topAnchor10 = [(CarNavigationGuidanceSign *)v8 topAnchor];
    v110 = [topAnchor9 constraintEqualToAnchor:topAnchor10];
    v147[2] = v110;
    minimumCompressedContentLayoutGuideHeightConstraint = [(CarNavigationGuidanceSign *)v8 minimumCompressedContentLayoutGuideHeightConstraint];
    v147[3] = minimumCompressedContentLayoutGuideHeightConstraint;
    v112 = [NSArray arrayWithObjects:v147 count:4];
    [NSLayoutConstraint activateConstraints:v112];

    sizeProvider = [(CarNavigationGuidanceSign *)v8 sizeProvider];
    v8->_layoutType = [sizeProvider maneuverViewLayoutType];
  }

  return v8;
}

@end