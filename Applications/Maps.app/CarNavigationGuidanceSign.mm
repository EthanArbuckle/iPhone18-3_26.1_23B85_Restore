@interface CarNavigationGuidanceSign
- (BOOL)_shouldForceSecondaryManeuverViewHidden;
- (BOOL)isPointInJunctionView:(CGPoint)a3;
- (CarGuidanceCardSizeProviding)sizeProvider;
- (CarManeuverView)primaryManeuverView;
- (CarManeuverView)secondaryManeuverView;
- (CarNavigationGuidanceSign)initWithDestination:(unint64_t)a3;
- (NSString)description;
- (UIView)junctionView;
- (double)_heightForCompressionStage:(unint64_t)a3 isMaximumCompression:(BOOL *)a4;
- (double)availableWidth;
- (double)complementarySignHeightForManeuverView:(id)a3;
- (double)dynamicPointScaleValue;
- (double)maxAvailableHeightForJunctionView:(double)a3;
- (unint64_t)_desiredCompressionStage;
- (void)_handleCarScreenSizeChange;
- (void)_hideMiniSignAnimated:(BOOL)a3;
- (void)_prepareManeuverView:(id)a3;
- (void)_replacePrimaryViewManeuver:(id)a3 initialConstraints:(id)a4 finalConstraints:(id)a5 slide:(BOOL)a6;
- (void)_replaceSecondaryViewManeuver:(id)a3 initialConstraints:(id)a4 finalConstraints:(id)a5;
- (void)_resetPrecalculatedCompressionSizes;
- (void)_showMiniSign;
- (void)_updateCompressionStage;
- (void)_updateMiniSignVisibility;
- (void)dealloc;
- (void)didMoveToWindow;
- (void)hideJunctionViewAnimated:(BOOL)a3;
- (void)layoutSubviews;
- (void)refreshJunctionView;
- (void)setBlurMode:(int64_t)a3;
- (void)setCompressionStage:(unint64_t)a3;
- (void)setJunctionViewHidden:(BOOL)a3;
- (void)setJunctionViewInfo:(id)a3;
- (void)setJunctionViewTemporarilyHidden:(BOOL)a3;
- (void)setLayoutType:(unint64_t)a3;
- (void)setNextPrimaryManeuver:(id)a3;
- (void)setPrimaryGuidance:(id)a3;
- (void)setPrimaryGuidanceSignID:(id)a3;
- (void)setPrimaryManeuver:(id)a3;
- (void)setSecondaryGuidance:(id)a3;
- (void)setSecondaryGuidanceSignID:(id)a3;
- (void)setSecondaryViewHidden:(BOOL)a3;
- (void)setSignStyle:(int64_t)a3;
- (void)showJunctionViewAnimated:(BOOL)a3;
- (void)updateWithGroupAnimation:(id)a3;
@end

@implementation CarNavigationGuidanceSign

- (UIView)junctionView
{
  v2 = [(CarNavigationGuidanceSign *)self junctionViewController];
  v3 = [v2 view];

  return v3;
}

- (CarManeuverView)secondaryManeuverView
{
  v3 = [(CarNavigationGuidanceSign *)self secondaryGuidanceSignID];

  if (!v3)
  {
    goto LABEL_6;
  }

  v4 = [(CarNavigationGuidanceSign *)self nextSecondaryManeuver];

  if (v4)
  {
    v5 = [(CarNavigationGuidanceSign *)self nextSecondaryManeuver];
    goto LABEL_7;
  }

  v6 = [(CarNavigationGuidanceSign *)self secondaryManeuver];

  if (v6)
  {
    v5 = [(CarNavigationGuidanceSign *)self secondaryManeuver];
  }

  else
  {
LABEL_6:
    v5 = 0;
  }

LABEL_7:

  return v5;
}

- (CarManeuverView)primaryManeuverView
{
  v3 = [(CarNavigationGuidanceSign *)self nextPrimaryManeuver];

  if (v3)
  {
    v4 = [(CarNavigationGuidanceSign *)self nextPrimaryManeuver];
  }

  else
  {
    v5 = [(CarNavigationGuidanceSign *)self primaryManeuver];

    if (v5)
    {
      v4 = [(CarNavigationGuidanceSign *)self primaryManeuver];
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

- (unint64_t)_desiredCompressionStage
{
  if ([(CarNavigationGuidanceSign *)self signStyle]== 1)
  {
    v3 = sub_10007E168();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v4 = [(CarNavigationGuidanceSign *)self destination];
      if (v4 > 4)
      {
        v5 = @".Unknown";
      }

      else
      {
        v5 = *(&off_101623A48 + v4);
      }

      v20 = v5;
      *buf = 138412546;
      v28 = v20;
      v29 = 2048;
      v30 = self;
      v21 = "%@ navSign: %p, _desiredCompressionStage isLowGuidance, because signStyle is .Mini.";
LABEL_19:
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, v21, buf, 0x16u);

      goto LABEL_20;
    }

    goto LABEL_20;
  }

  v6 = [(CarNavigationGuidanceSign *)self sizeProvider];
  [v6 availableSize];
  v8 = v7;
  v10 = v9;

  if (v8 < 125.0)
  {
    v3 = sub_10007E168();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v11 = [(CarNavigationGuidanceSign *)self destination];
      if (v11 > 4)
      {
        v12 = @".Unknown";
      }

      else
      {
        v12 = *(&off_101623A48 + v11);
      }

      v20 = v12;
      *buf = 138412546;
      v28 = v20;
      v29 = 2048;
      v30 = self;
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
    v18 = [(CarNavigationGuidanceSign *)self destination];
    if (v18 > 4)
    {
      v19 = @".Unknown";
    }

    else
    {
      v19 = *(&off_101623A48 + v18);
    }

    v22 = v19;
    v23 = [(CarNavigationGuidanceSign *)self compressionStage];
    v39.width = v8;
    v39.height = v10;
    v24 = NSStringFromCGSize(v39);
    *buf = 138413570;
    v28 = v22;
    v29 = 2048;
    v30 = self;
    v31 = 2048;
    v32 = v23;
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
  v3 = [(CarNavigationGuidanceSign *)self destination];
  if (v3 - 3 >= 2)
  {
    return v3 > 1 || [(CarNavigationGuidanceSign *)self signStyle]== 1;
  }

  return GEOConfigGetBOOL();
}

- (void)layoutSubviews
{
  v15.receiver = self;
  v15.super_class = CarNavigationGuidanceSign;
  [(CarNavigationGuidanceSign *)&v15 layoutSubviews];
  v3 = [(CarNavigationGuidanceSign *)self primaryManeuverView];

  if (v3)
  {
    v4 = [(CarNavigationGuidanceSign *)self layoutType];
    v5 = [(CarNavigationGuidanceSign *)self sizeProvider];
    -[CarNavigationGuidanceSign setLayoutType:](self, "setLayoutType:", [v5 maneuverViewLayoutType]);

    [(CarNavigationGuidanceSign *)self _updateCompressionStage];
    v6 = [(CarNavigationGuidanceSign *)self junctionViewInfo];
    if (v6)
    {
      v7 = v6;
      v8 = [(CarNavigationGuidanceSign *)self junctionView];
      v9 = [v8 isHidden];

      if ((v9 & 1) == 0)
      {
        [(CarNavigationGuidanceSign *)self maxAvailableHeightForJunctionView:0.0];
        v11 = v10;
        v12 = [(CarNavigationGuidanceSign *)self junctionViewController];
        [v12 setAvailableHeight:v11];
      }
    }

    if ([(CarNavigationGuidanceSign *)self layoutType]== v4)
    {
      v13 = [(CarNavigationGuidanceSign *)self secondaryManeuverView];
      v14 = [(CarNavigationGuidanceSign *)self primaryManeuverView];
      [v13 alignSecondarySignSubviewsToPrimaryManeuverView:v14];
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
      v5 = [(CarNavigationGuidanceSign *)self destination];
      if (v5 > 4)
      {
        v6 = @".Unknown";
      }

      else
      {
        v6 = *(&off_101623A48 + v5);
      }

      v11 = v6;
      v23 = 138412546;
      v24 = v11;
      v25 = 2048;
      v26 = self;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "%@ navSign: %p, layoutSubviews, but availableWidth was 0. setting compressionStage to None.", &v23, 0x16u);
    }

    v12 = self;
    v13 = 0;
  }

  else
  {
    v7 = v3;
    if (v3 != self->_widthAtLastCompressionUpdate)
    {
      v8 = sub_10007E168();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        v9 = [(CarNavigationGuidanceSign *)self destination];
        if (v9 > 4)
        {
          v10 = @".Unknown";
        }

        else
        {
          v10 = *(&off_101623A48 + v9);
        }

        v14 = v10;
        widthAtLastCompressionUpdate = self->_widthAtLastCompressionUpdate;
        v23 = 138413058;
        v24 = v14;
        v25 = 2048;
        v26 = self;
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
      v18 = [(CarNavigationGuidanceSign *)self minimumCompressedContentLayoutGuideHeightConstraint];
      [v18 setConstant:v17];
    }

    v19 = sub_10007E168();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      v20 = [(CarNavigationGuidanceSign *)self destination];
      if (v20 > 4)
      {
        v21 = @".Unknown";
      }

      else
      {
        v21 = *(&off_101623A48 + v20);
      }

      v22 = v21;
      v23 = 138412802;
      v24 = v22;
      v25 = 2048;
      v26 = self;
      v27 = 2048;
      v28 = v7;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEBUG, "%@ navSign: %p, layoutSubviews, availableWidth width is %1.f.", &v23, 0x20u);
    }

    v13 = [(CarNavigationGuidanceSign *)self _desiredCompressionStage];
    v12 = self;
  }

  [(CarNavigationGuidanceSign *)v12 setCompressionStage:v13];
}

- (double)availableWidth
{
  v2 = [(CarNavigationGuidanceSign *)self sizeProvider];
  [v2 availableSize];
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
  v3 = [(CarNavigationGuidanceSign *)self window];

  if (v3)
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
  v4 = [(CarNavigationGuidanceSign *)self destination];
  if (v4 > 4)
  {
    v5 = @".Unknown";
  }

  else
  {
    v5 = *(&off_101623A48 + v4);
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
    v4 = [(CarNavigationGuidanceSign *)self destination];
    if (v4 > 4)
    {
      v5 = @".Unknown";
    }

    else
    {
      v5 = *(&off_101623A48 + v4);
    }

    v6 = v5;
    v8 = 138412546;
    v9 = v6;
    v10 = 2048;
    v11 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "%@ navSign: %p, _handleCarScreenSizeChange", &v8, 0x16u);
  }

  v7 = [(CarNavigationGuidanceSign *)self sizeProvider];
  -[CarNavigationGuidanceSign setLayoutType:](self, "setLayoutType:", [v7 maneuverViewLayoutType]);
}

- (void)updateWithGroupAnimation:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v6 = objc_opt_new();
  v7 = objc_opt_new();
  v8 = sub_10007E168();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = [(CarNavigationGuidanceSign *)self primaryManeuver];
    v10 = [(CarNavigationGuidanceSign *)self primaryManeuver];
    v11 = [v10 guidance];
    v12 = [v11 signID];
    *buf = 134218498;
    v26 = self;
    v27 = 2112;
    v28 = v9;
    v29 = 2112;
    v30 = v12;
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
  [v4 addPreparation:v21 animations:v17 completion:v16];
}

- (void)setLayoutType:(unint64_t)a3
{
  if ([(CarNavigationGuidanceSign *)self layoutType]!= a3)
  {
    self->_layoutType = a3;
    v5 = sub_10007E168();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = [(CarNavigationGuidanceSign *)self destination];
      if (v6 > 4)
      {
        v7 = @".Unknown";
      }

      else
      {
        v7 = *(&off_101623A48 + v6);
      }

      v8 = v7;
      v9 = [(CarNavigationGuidanceSign *)self layoutType];
      if (v9 > 2)
      {
        v10 = @".Unknown";
      }

      else
      {
        v10 = *(&off_101656260 + v9);
      }

      v11 = v10;
      v18 = 138412546;
      v19 = v8;
      v20 = 2112;
      v21 = v11;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "%@ navSign layoutType changed to %@. Updating carManeuver views.", &v18, 0x16u);
    }

    v12 = [(CarNavigationGuidanceSign *)self primaryManeuver];
    [v12 setLayoutType:{-[CarNavigationGuidanceSign layoutType](self, "layoutType")}];

    v13 = [(CarNavigationGuidanceSign *)self nextPrimaryManeuver];
    [v13 setLayoutType:{-[CarNavigationGuidanceSign layoutType](self, "layoutType")}];

    v14 = [(CarNavigationGuidanceSign *)self secondaryManeuver];
    [v14 setLayoutType:{-[CarNavigationGuidanceSign layoutType](self, "layoutType")}];

    v15 = [(CarNavigationGuidanceSign *)self nextSecondaryManeuver];
    [v15 setLayoutType:{-[CarNavigationGuidanceSign layoutType](self, "layoutType")}];

    v16 = [(CarNavigationGuidanceSign *)self secondaryManeuverView];
    v17 = [(CarNavigationGuidanceSign *)self primaryManeuverView];
    [v16 alignSecondarySignSubviewsToPrimaryManeuverView:v17];
  }
}

- (void)_replaceSecondaryViewManeuver:(id)a3 initialConstraints:(id)a4 finalConstraints:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = a4;
  v11 = sub_10007E168();
  if (!os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    goto LABEL_11;
  }

  v12 = self;
  if (!v12)
  {
    v17 = @"<nil>";
    goto LABEL_10;
  }

  v13 = objc_opt_class();
  v14 = NSStringFromClass(v13);
  if (objc_opt_respondsToSelector())
  {
    v15 = [(CarNavigationGuidanceSign *)v12 performSelector:"accessibilityIdentifier"];
    v16 = v15;
    if (v15 && ![v15 isEqualToString:v14])
    {
      v17 = [NSString stringWithFormat:@"%@<%p, %@>", v14, v12, v16];

      goto LABEL_8;
    }
  }

  v17 = [NSString stringWithFormat:@"%@<%p>", v14, v12];
LABEL_8:

LABEL_10:
  *buf = 138543362;
  v36 = v17;
  _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "[%{public}@] _replaceSecondaryViewManeuver.", buf, 0xCu);

LABEL_11:
  v18 = objc_opt_new();
  if (v8)
  {
    [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(CarNavigationGuidanceSign *)self _prepareManeuverView:v8];
    v19 = [(CarNavigationGuidanceSign *)self secondaryView];
    [v19 setHidden:0];

    v20 = [(CarNavigationGuidanceSign *)self secondaryViewHidden];
    v21 = [(CarNavigationGuidanceSign *)self hairlineView];
    [v21 setHidden:v20];

    [v8 setHidden:{-[CarNavigationGuidanceSign secondaryViewHidden](self, "secondaryViewHidden")}];
    v22 = [(CarNavigationGuidanceSign *)self secondaryView];
    [v22 addSubview:v8];

    v23 = [(CarNavigationGuidanceSign *)self secondaryView];
    LODWORD(v24) = 1148846080;
    LODWORD(v25) = 1148846080;
    LODWORD(v26) = 1148846080;
    LODWORD(v27) = 1148846080;
    v28 = [v8 _maps_constraintsForCenteringInView:v23 edgeInsets:UIEdgeInsetsZero.top priorities:{UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right, v24, v25, v26, v27}];
    [v18 addObjectsFromArray:v28];

    v29 = [(CarNavigationGuidanceSign *)self secondaryViewConstraints];
    [NSLayoutConstraint activateConstraints:v29];
  }

  else
  {
    v30 = [(CarNavigationGuidanceSign *)self secondaryView];
    [v30 setHidden:1];

    v31 = [(CarNavigationGuidanceSign *)self hairlineView];
    [v31 setHidden:1];

    v29 = [(CarNavigationGuidanceSign *)self secondaryViewConstraints];
    [NSLayoutConstraint deactivateConstraints:v29];
  }

  if ([(CarNavigationGuidanceSign *)self secondaryViewHidden])
  {
    v32 = 0.0;
  }

  else
  {
    v32 = 200.0;
  }

  v33 = [(CarNavigationGuidanceSign *)self secondaryViewHeightConstraint];
  [v33 setConstant:v32];

  [v10 addObjectsFromArray:v18];
  [v9 addObjectsFromArray:v18];

  v34 = [(CarNavigationGuidanceSign *)self secondaryManeuver];
  [v34 setStopUpdatingCompressionStage:1];
}

- (void)_replacePrimaryViewManeuver:(id)a3 initialConstraints:(id)a4 finalConstraints:(id)a5 slide:(BOOL)a6
{
  v106 = a6;
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = v9;
  v13 = [(CarNavigationGuidanceSign *)self primaryManeuver];
  v113 = self;
  v14 = [(CarNavigationGuidanceSign *)self primaryView];
  v15 = sub_10007E168();
  v112 = v13;
  v109 = v10;
  if (!os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    goto LABEL_13;
  }

  v16 = self;
  if (!v16)
  {
    v21 = @"<nil>";
    goto LABEL_10;
  }

  v17 = objc_opt_class();
  v18 = NSStringFromClass(v17);
  if (objc_opt_respondsToSelector())
  {
    v19 = [(CarNavigationGuidanceSign *)v16 performSelector:"accessibilityIdentifier"];
    v20 = v19;
    if (v19 && ![v19 isEqualToString:v18])
    {
      v21 = [NSString stringWithFormat:@"%@<%p, %@>", v18, v16, v20];

      goto LABEL_8;
    }
  }

  v21 = [NSString stringWithFormat:@"%@<%p>", v18, v16];
LABEL_8:

LABEL_10:
  v22 = [v12 guidance];
  v23 = [v22 signID];
  v24 = [v13 guidance];
  v25 = [v24 signID];
  v26 = v25;
  *buf = 138544642;
  v27 = @"NO";
  *&buf[4] = v21;
  if (v106)
  {
    v27 = @"YES";
  }

  *&buf[12] = 2112;
  *&buf[14] = v12;
  *&buf[22] = 2112;
  v120 = v23;
  v121 = 2112;
  v122 = v13;
  v123 = 2112;
  v124 = v25;
  v125 = 2112;
  v126 = v27;
  v28 = v27;
  _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "[%{public}@] _replacePrimaryViewManeuver incoming: %@ (%@) outgoing: %@ (%@) shouldSlide: %@", buf, 0x3Eu);

  v13 = v112;
  v10 = v109;
LABEL_13:

  if (v12)
  {
    v29 = [v14 subviews];
    v30 = sub_1000282CC(v29, &stru_1016325B0);

    v104 = v30;
    v103 = v11;
    v105 = v14;
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
        v35 = [(CarNavigationGuidanceSign *)v113 destination];
        if (v35 > 4)
        {
          v36 = @".Unknown";
        }

        else
        {
          v36 = *(&off_101623A48 + v35);
        }

        v40 = v36;
        v41 = [(CarNavigationGuidanceSign *)v113 recursiveDescription];
        *buf = 138412802;
        *&buf[4] = v40;
        *&buf[12] = 2048;
        *&buf[14] = v113;
        *&buf[22] = 2112;
        v120 = v41;
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
            if (v47 != v13)
            {
              v48 = sub_10007E168();
              if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
              {
                v49 = [(CarNavigationGuidanceSign *)v113 destination];
                v50 = @".Unknown";
                if (v49 <= 4)
                {
                  v50 = *(&off_101623A48 + v49);
                }

                v51 = v50;
                *buf = 138412802;
                *&buf[4] = v51;
                *&buf[12] = 2048;
                *&buf[14] = v113;
                *&buf[22] = 2112;
                v120 = v47;
                _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_ERROR, "%@ navSign: %p, will remove lingering view: %@", buf, 0x20u);

                v13 = v112;
              }

              [v47 removeFromSuperview];
            }
          }

          v44 = [v42 countByEnumeratingWithState:&v114 objects:v118 count:16];
        }

        while (v44);
      }

      v10 = v109;
      v11 = v103;
      v14 = v105;
    }

    [v12 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(CarNavigationGuidanceSign *)v113 _prepareManeuverView:v12];
    v52 = [(CarNavigationGuidanceSign *)v113 primaryView];
    [v52 addSubview:v12];

    if (v106)
    {
      v57 = v14;
      v58 = v12;
      v110 = [v58 topAnchor];
      v107 = [v57 topAnchor];
      v102 = [v110 constraintEqualToAnchor:v107];
      *buf = v102;
      v59 = [v58 leadingAnchor];
      v60 = [v57 trailingAnchor];
      v61 = [v59 constraintEqualToAnchor:v60];
      *&buf[8] = v61;
      v62 = [v58 heightAnchor];
      [v58 bounds];
      v63 = [v62 constraintEqualToConstant:CGRectGetHeight(v127)];
      *&buf[16] = v63;
      v64 = [v58 widthAnchor];

      [v57 bounds];
      v66 = v65;
      v68 = v67;
      v70 = v69;
      v72 = v71;

      v128.origin.x = v66;
      v128.origin.y = v68;
      v128.size.width = v70;
      v128.size.height = v72;
      v73 = [v64 constraintEqualToConstant:CGRectGetWidth(v128)];
      v120 = v73;
      v74 = [NSArray arrayWithObjects:buf count:4];

      v10 = v109;
      v11 = v103;

      [v109 addObjectsFromArray:v74];
      if (!v112)
      {
LABEL_52:
        LODWORD(v75) = 1148846080;
        v14 = v105;
        LODWORD(v76) = 1148846080;
        LODWORD(v77) = 1148846080;
        LODWORD(v78) = 1148846080;
        v99 = [v12 _maps_constraintsForCenteringInView:v105 edgeInsets:UIEdgeInsetsZero.top priorities:{UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right, v75, v76, v77, v78}];
        [(CarNavigationGuidanceSign *)v113 setPrimaryManeuverConstraints:v99];

        v100 = [(CarNavigationGuidanceSign *)v113 primaryManeuverConstraints];
        [v11 addObjectsFromArray:v100];

        v101 = [(CarNavigationGuidanceSign *)v113 primaryManeuver];
        [v101 setStopUpdatingCompressionStage:1];

        v13 = v112;
        goto LABEL_53;
      }

      v79 = v57;
      v80 = v112;
      v81 = [v80 topAnchor];
      v111 = [v79 topAnchor];
      v108 = [v81 constraintEqualToAnchor:v111];
      *buf = v108;
      v82 = [v80 trailingAnchor];
      v83 = [v79 leadingAnchor];
      v84 = [v82 constraintEqualToAnchor:v83];
      *&buf[8] = v84;
      v85 = [v80 heightAnchor];
      [v80 bounds];
      v86 = [v85 constraintEqualToConstant:CGRectGetHeight(v129)];
      *&buf[16] = v86;
      v87 = [v80 widthAnchor];

      [v79 bounds];
      v89 = v88;
      v91 = v90;
      v93 = v92;
      v95 = v94;

      v130.origin.x = v89;
      v130.origin.y = v91;
      v130.size.width = v93;
      v130.size.height = v95;
      v96 = [v87 constraintEqualToConstant:CGRectGetWidth(v130)];
      v120 = v96;
      v97 = [NSArray arrayWithObjects:buf count:4];

      v10 = v109;
      v11 = v103;

      v98 = v103;
    }

    else
    {
      LODWORD(v53) = 1148846080;
      LODWORD(v54) = 1148846080;
      LODWORD(v55) = 1148846080;
      LODWORD(v56) = 1148846080;
      v97 = [v12 _maps_constraintsForCenteringInView:v14 edgeInsets:UIEdgeInsetsZero.top priorities:{UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right, v53, v54, v55, v56}];
      v98 = v10;
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

  [v13 setStopUpdatingCompressionStage:1];
  [v13 removeFromSuperview];
LABEL_53:
}

- (double)complementarySignHeightForManeuverView:(id)a3
{
  v4 = a3;
  v5 = [(CarNavigationGuidanceSign *)self secondaryManeuverView];
  Height = 0.0;
  if (!v5)
  {
    v7 = [(CarNavigationGuidanceSign *)self hairlineView];
    [v7 frame];
    Height = CGRectGetHeight(v12);
  }

  v8 = [v4 variant];
  if (v8 == 2)
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

- (void)_prepareManeuverView:(id)a3
{
  v4 = a3;
  v5 = [(CarNavigationGuidanceSign *)self sizeProvider];
  [v5 availableSize];
  v7 = v6;
  v9 = v8;

  v10 = [[UIView alloc] initWithFrame:{0.0, 0.0, v7, 1.79769313e308}];
  [v10 addSubview:v4];
  v28 = [v4 topAnchor];
  v27 = [v10 topAnchor];
  v11 = [v28 constraintEqualToAnchor:v27];
  v38[0] = v11;
  v12 = [v4 leadingAnchor];
  v13 = [v10 leadingAnchor];
  v14 = [v12 constraintEqualToAnchor:v13];
  v38[1] = v14;
  v15 = [v4 trailingAnchor];
  v16 = [v10 trailingAnchor];
  v17 = [v15 constraintEqualToAnchor:v16];
  v38[2] = v17;
  v18 = [NSArray arrayWithObjects:v38 count:3];

  [NSLayoutConstraint activateConstraints:v18];
  [v10 setNeedsLayout];
  [v10 layoutIfNeeded];
  [(CarNavigationGuidanceSign *)self complementarySignHeightForManeuverView:v4];
  v20 = v9 - v19;
  [v4 frame];
  if (v21 > v20)
  {
    [v4 setCompressionStage:{objc_msgSend(v4, "compressionStageForSize:", v7, v9)}];
    [v10 setNeedsLayout];
    [v10 layoutIfNeeded];
  }

  [NSLayoutConstraint deactivateConstraints:v18];
  v22 = sub_10007E168();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
  {
    v23 = [(CarNavigationGuidanceSign *)self destination];
    if (v23 > 4)
    {
      v24 = @".Unknown";
    }

    else
    {
      v24 = *(&off_101623A48 + v23);
    }

    v25 = v24;
    v39.width = v7;
    v39.height = v9;
    v26 = NSStringFromCGSize(v39);
    *buf = 138413058;
    v31 = v25;
    v32 = 2048;
    v33 = self;
    v34 = 2112;
    v35 = v26;
    v36 = 2048;
    v37 = [(CarNavigationGuidanceSign *)self compressionStage];
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEBUG, "%@ navSign: %p, _prepareManeuverView. for availableSize: %@, with compressionStage: %lu", buf, 0x2Au);
  }
}

- (double)maxAvailableHeightForJunctionView:(double)a3
{
  v4 = 0.0;
  if ([(CarNavigationGuidanceSign *)self destination]!= 2 && [(CarNavigationGuidanceSign *)self destination]- 3 >= 2 && ![(CarNavigationGuidanceSign *)self junctionViewHidden]&& ![(CarNavigationGuidanceSign *)self junctionViewTemporarilyHidden])
  {
    v5 = [(CarNavigationGuidanceSign *)self sizeProvider];
    [v5 availableSize];
    v7 = v6;

    v8 = [(CarNavigationGuidanceSign *)self primaryManeuverView];
    [v8 frame];
    Height = CGRectGetHeight(v17);
    v10 = [(CarNavigationGuidanceSign *)self hairlineView];
    [v10 frame];
    v11 = v7 - (Height + CGRectGetHeight(v18));

    v12 = +[CarDisplayController sharedInstance];
    v13 = [v12 screenTraitCollection];
    [v13 displayScale];
    v15 = v14;

    return floor(v15 * v11) / v15;
  }

  return v4;
}

- (void)hideJunctionViewAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = sub_10007E168();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = [(CarNavigationGuidanceSign *)self destination];
    if (v6 > 4)
    {
      v7 = @".Unknown";
    }

    else
    {
      v7 = *(&off_101623A48 + v6);
    }

    v8 = v7;
    v9 = @"NO";
    if (v3)
    {
      v9 = @"YES";
    }

    v10 = v9;
    *buf = 138412802;
    v14 = v8;
    v15 = 2048;
    v16 = self;
    v17 = 2112;
    v18 = v10;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "%@ navSign: %p, hideJunctionViewAnimated: %@", buf, 0x20u);
  }

  [(CarNavigationGuidanceSign *)self setJunctionViewTemporarilyHidden:1];
  if (v3)
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
    v11 = [(CarNavigationGuidanceSign *)self junctionView];
    [v11 layoutIfNeeded];

    [(CarNavigationGuidanceSign *)self layoutIfNeeded];
  }
}

- (void)showJunctionViewAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = sub_10007E168();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = [(CarNavigationGuidanceSign *)self destination];
    if (v6 > 4)
    {
      v7 = @".Unknown";
    }

    else
    {
      v7 = *(&off_101623A48 + v6);
    }

    v8 = v7;
    v9 = @"NO";
    if (v3)
    {
      v9 = @"YES";
    }

    v10 = v9;
    *buf = 138412802;
    v13 = v8;
    v14 = 2048;
    v15 = self;
    v16 = 2112;
    v17 = v10;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "%@ navSign: %p, showJunctionViewAnimated: %@", buf, 0x20u);
  }

  [(CarNavigationGuidanceSign *)self setJunctionViewTemporarilyHidden:0];
  if (v3)
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

- (void)setJunctionViewInfo:(id)a3
{
  v5 = a3;
  if (self->_junctionViewController)
  {
    v9 = v5;
    v6 = [(CarNavigationGuidanceSign *)self sizeProvider];
    -[CarNavigationGuidanceSign setLayoutType:](self, "setLayoutType:", [v6 maneuverViewLayoutType]);

    v5 = v9;
    if (self->_junctionViewInfo != v9)
    {
      objc_storeStrong(&self->_junctionViewInfo, a3);
      junctionViewInfo = self->_junctionViewInfo;
      v8 = [(CarNavigationGuidanceSign *)self junctionViewController];
      [v8 setJunctionViewInfo:junctionViewInfo];

      v5 = v9;
    }
  }
}

- (void)refreshJunctionView
{
  v2 = [(CarNavigationGuidanceSign *)self junctionView];
  [v2 setNeedsLayout];
}

- (void)setCompressionStage:(unint64_t)a3
{
  v5 = [(CarNavigationGuidanceSign *)self primaryManeuver];
  v6 = [v5 compressionStage];

  v7 = [(CarNavigationGuidanceSign *)self secondaryManeuver];
  v8 = [v7 compressionStage];

  self->_compressionStage = a3;
  v9 = [(CarNavigationGuidanceSign *)self secondaryGuidanceSignID];

  v10 = [(CarNavigationGuidanceSign *)self junctionView];
  if (v10)
  {
    v11 = [(CarNavigationGuidanceSign *)self junctionViewInfo];
    v12 = v11 != 0;
  }

  else
  {
    v12 = 0;
  }

  [CarNavigationGuidanceSignCompression compressionForStage:a3 hasSecondary:v9 != 0 hasJunctionView:v12 forDestination:[(CarNavigationGuidanceSign *)self destination]];
  v13 = [(CarNavigationGuidanceSign *)self primaryManeuver];
  [v13 setCompressionStage:0];

  v14 = [(CarNavigationGuidanceSign *)self nextPrimaryManeuver];
  [v14 setCompressionStage:0];

  v15 = sub_10007E168();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    v16 = [(CarNavigationGuidanceSign *)self destination];
    if (v16 > 4)
    {
      v17 = @".Unknown";
    }

    else
    {
      v17 = *(&off_101623A48 + v16);
    }

    v18 = v17;
    compressionStage = self->_compressionStage;
    *buf = 138413570;
    v26 = v18;
    v27 = 2048;
    v28 = self;
    v29 = 2048;
    v30 = compressionStage;
    v31 = 2048;
    v32 = a3;
    v33 = 2048;
    v34 = 0;
    v35 = 2048;
    v36 = 0;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "%@ navSign: %p, setCompressionStage: before: %lu, after: %lu. primaryCompression: %lu, secondaryCompression: %lu", buf, 0x3Eu);
  }

  v20 = [(CarNavigationGuidanceSign *)self secondaryManeuver];
  [v20 setCompressionStage:0];

  v21 = [(CarNavigationGuidanceSign *)self nextSecondaryManeuver];
  [v21 setCompressionStage:0];

  [(CarNavigationGuidanceSign *)self setSecondaryViewHidden:0];
  [(CarNavigationGuidanceSign *)self setJunctionViewHidden:0];
  v22 = [(CarNavigationGuidanceSign *)self primaryManeuver];
  if (v6 != [v22 compressionStage])
  {

    goto LABEL_13;
  }

  v23 = [(CarNavigationGuidanceSign *)self secondaryManeuver];
  v24 = [v23 compressionStage];

  if (v8 != v24)
  {
LABEL_13:
    [(CarNavigationGuidanceSign *)self setNeedsLayout];
    [(CarNavigationGuidanceSign *)self layoutIfNeeded];
  }
}

- (void)_resetPrecalculatedCompressionSizes
{
  v3 = [(CarNavigationGuidanceSign *)self primaryManeuver];
  [v3 resetCompressionSizes];

  v4 = [(CarNavigationGuidanceSign *)self nextPrimaryManeuver];
  [v4 resetCompressionSizes];

  v5 = [(CarNavigationGuidanceSign *)self secondaryManeuver];
  [v5 resetCompressionSizes];

  v6 = [(CarNavigationGuidanceSign *)self nextSecondaryManeuver];
  [v6 resetCompressionSizes];
}

- (void)setBlurMode:(int64_t)a3
{
  v5 = [(CarNavigationGuidanceSign *)self primaryManeuver];
  [v5 setBlurMode:a3];

  v6 = [(CarNavigationGuidanceSign *)self nextPrimaryManeuver];
  [v6 setBlurMode:a3];

  v7 = [(CarNavigationGuidanceSign *)self secondaryManeuver];
  [v7 setBlurMode:a3];

  v8 = [(CarNavigationGuidanceSign *)self nextSecondaryManeuver];
  [v8 setBlurMode:a3];
}

- (void)setNextPrimaryManeuver:(id)a3
{
  v5 = a3;
  if (self->_nextPrimaryManeuver != v5)
  {
    v6 = sub_10007E168();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      nextPrimaryManeuver = self->_nextPrimaryManeuver;
      v8 = 138412546;
      v9 = nextPrimaryManeuver;
      v10 = 2112;
      v11 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Changing nextPrimaryManeuver from %@ to %@", &v8, 0x16u);
    }

    objc_storeStrong(&self->_nextPrimaryManeuver, a3);
  }
}

- (void)setPrimaryManeuver:(id)a3
{
  v5 = a3;
  if (self->_primaryManeuver != v5)
  {
    v6 = sub_10007E168();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      primaryManeuver = self->_primaryManeuver;
      v8 = 138412546;
      v9 = primaryManeuver;
      v10 = 2112;
      v11 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Changing primaryManeuver from %@ to %@", &v8, 0x16u);
    }

    objc_storeStrong(&self->_primaryManeuver, a3);
  }
}

- (void)setSecondaryGuidanceSignID:(id)a3
{
  v5 = a3;
  if (self->_secondaryGuidanceSignID != v5)
  {
    v6 = sub_10007E168();
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
LABEL_9:

      objc_storeStrong(&self->_secondaryGuidanceSignID, a3);
      goto LABEL_10;
    }

    v7 = self;
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    if (objc_opt_respondsToSelector())
    {
      v10 = [(CarNavigationGuidanceSign *)v7 performSelector:"accessibilityIdentifier"];
      v11 = v10;
      if (v10 && ![v10 isEqualToString:v9])
      {
        v12 = [NSString stringWithFormat:@"%@<%p, %@>", v9, v7, v11];

        goto LABEL_8;
      }
    }

    v12 = [NSString stringWithFormat:@"%@<%p>", v9, v7];
LABEL_8:

    secondaryGuidanceSignID = self->_secondaryGuidanceSignID;
    *buf = 138543874;
    v15 = v12;
    v16 = 2112;
    v17 = secondaryGuidanceSignID;
    v18 = 2112;
    v19 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "[%{public}@] Changing secondary sign ID from %@ to %@", buf, 0x20u);

    goto LABEL_9;
  }

LABEL_10:
}

- (void)setPrimaryGuidanceSignID:(id)a3
{
  v5 = a3;
  if (self->_primaryGuidanceSignID != v5)
  {
    v6 = sub_10007E168();
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
LABEL_9:

      objc_storeStrong(&self->_primaryGuidanceSignID, a3);
      goto LABEL_10;
    }

    v7 = self;
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    if (objc_opt_respondsToSelector())
    {
      v10 = [(CarNavigationGuidanceSign *)v7 performSelector:"accessibilityIdentifier"];
      v11 = v10;
      if (v10 && ![v10 isEqualToString:v9])
      {
        v12 = [NSString stringWithFormat:@"%@<%p, %@>", v9, v7, v11];

        goto LABEL_8;
      }
    }

    v12 = [NSString stringWithFormat:@"%@<%p>", v9, v7];
LABEL_8:

    primaryGuidanceSignID = self->_primaryGuidanceSignID;
    *buf = 138543874;
    v15 = v12;
    v16 = 2112;
    v17 = primaryGuidanceSignID;
    v18 = 2112;
    v19 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "[%{public}@] Changing primary sign ID from %@ to %@", buf, 0x20u);

    goto LABEL_9;
  }

LABEL_10:
}

- (void)setSecondaryGuidance:(id)a3
{
  v5 = a3;
  if (self->_secondaryGuidance != v5)
  {
    v6 = sub_10007E168();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      secondaryGuidance = self->_secondaryGuidance;
      v8 = 138412546;
      v9 = secondaryGuidance;
      v10 = 2112;
      v11 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Changing secondaryGuidance from %@ to %@", &v8, 0x16u);
    }

    objc_storeStrong(&self->_secondaryGuidance, a3);
  }
}

- (void)setPrimaryGuidance:(id)a3
{
  v5 = a3;
  if (self->_primaryGuidance != v5)
  {
    v6 = sub_10007E168();
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
LABEL_9:

      objc_storeStrong(&self->_primaryGuidance, a3);
      goto LABEL_10;
    }

    v7 = self;
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    if (objc_opt_respondsToSelector())
    {
      v10 = [(CarNavigationGuidanceSign *)v7 performSelector:"accessibilityIdentifier"];
      v11 = v10;
      if (v10 && ![v10 isEqualToString:v9])
      {
        v12 = [NSString stringWithFormat:@"%@<%p, %@>", v9, v7, v11];

        goto LABEL_8;
      }
    }

    v12 = [NSString stringWithFormat:@"%@<%p>", v9, v7];
LABEL_8:

    primaryGuidance = self->_primaryGuidance;
    *buf = 138543874;
    v15 = v12;
    v16 = 2112;
    v17 = primaryGuidance;
    v18 = 2112;
    v19 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "[%{public}@] Changing primaryGuidance from %@ to %@", buf, 0x20u);

    goto LABEL_9;
  }

LABEL_10:
}

- (void)setJunctionViewTemporarilyHidden:(BOOL)a3
{
  if (self->_junctionViewTemporarilyHidden != a3)
  {
    self->_junctionViewTemporarilyHidden = a3;
    [(CarNavigationGuidanceSign *)self maxAvailableHeightForJunctionView:0.0];
    v6 = v5;
    v7 = [(CarNavigationGuidanceSign *)self junctionViewController];
    [v7 setAvailableHeight:v6];
  }
}

- (void)setJunctionViewHidden:(BOOL)a3
{
  if (self->_junctionViewHidden != a3)
  {
    self->_junctionViewHidden = a3;
    [(CarNavigationGuidanceSign *)self maxAvailableHeightForJunctionView:0.0];
    v6 = v5;
    v7 = [(CarNavigationGuidanceSign *)self junctionViewController];
    [v7 setAvailableHeight:v6];
  }
}

- (void)setSecondaryViewHidden:(BOOL)a3
{
  v3 = a3;
  if ([(CarNavigationGuidanceSign *)self _shouldForceSecondaryManeuverViewHidden])
  {
    v5 = sub_10007E168();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = [(CarNavigationGuidanceSign *)self destination];
      if (v6 > 4)
      {
        v7 = @".Unknown";
      }

      else
      {
        v7 = *(&off_101623A48 + v6);
      }

      v8 = v7;
      v26 = 138412546;
      v27 = v8;
      v28 = 2048;
      v29 = self;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "%@ navSign: %p, forcing secondaryViewHidden for nav signs displayed in widgets.", &v26, 0x16u);
    }

    v3 = 1;
  }

  if (self->_secondaryViewHidden != v3)
  {
    v9 = sub_10007E168();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v10 = [(CarNavigationGuidanceSign *)self destination];
      if (v10 > 4)
      {
        v11 = @".Unknown";
      }

      else
      {
        v11 = *(&off_101623A48 + v10);
      }

      v12 = v11;
      v13 = [(CarNavigationGuidanceSign *)self compressionStage];
      if (self->_secondaryViewHidden)
      {
        v14 = @"YES";
      }

      else
      {
        v14 = @"NO";
      }

      v15 = v14;
      if (v3)
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
      v29 = self;
      v30 = 2048;
      v31 = v13;
      v32 = 2112;
      v33 = v15;
      v34 = 2112;
      v35 = v17;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "%@ navSign: %p, compression: %lu. setSecondaryViewHidden: before: %@, after: %@", &v26, 0x34u);
    }

    self->_secondaryViewHidden = v3;
    v18 = [(CarNavigationGuidanceSign *)self secondaryManeuver];
    [v18 setHidden:v3];

    secondaryViewHidden = self->_secondaryViewHidden;
    v20 = [(CarNavigationGuidanceSign *)self nextSecondaryManeuver];
    [v20 setHidden:secondaryViewHidden];

    v21 = self->_secondaryViewHidden;
    v22 = [(CarNavigationGuidanceSign *)self hairlineView];
    [v22 setHidden:v21];

    LODWORD(v21) = self->_secondaryViewHidden;
    v23 = [(CarNavigationGuidanceSign *)self secondaryViewHeightConstraint];
    v24 = v23;
    v25 = 200.0;
    if (v21)
    {
      v25 = 0.0;
    }

    [v23 setConstant:v25];
  }
}

- (BOOL)isPointInJunctionView:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(CarNavigationGuidanceSign *)self junctionViewInfo];
  if (v6)
  {
    v7 = [(CarNavigationGuidanceSign *)self junctionView];
    [v7 bounds];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v16 = [(CarNavigationGuidanceSign *)self junctionView];
    [(CarNavigationGuidanceSign *)self convertRect:v16 fromView:v9, v11, v13, v15];
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

- (double)_heightForCompressionStage:(unint64_t)a3 isMaximumCompression:(BOOL *)a4
{
  v7 = [(CarNavigationGuidanceSign *)self secondaryGuidanceSignID];

  v8 = [(CarNavigationGuidanceSign *)self junctionView];
  if (v8)
  {
    v9 = [(CarNavigationGuidanceSign *)self junctionViewInfo];
    v10 = v9 != 0;
  }

  else
  {
    v10 = 0;
  }

  [CarNavigationGuidanceSignCompression compressionForStage:a3 hasSecondary:v7 != 0 hasJunctionView:v10 forDestination:[(CarNavigationGuidanceSign *)self destination]];
  v11 = [(CarNavigationGuidanceSign *)self primaryManeuverView];
  [v11 sizeForCompressionStage:0];
  v13 = v12;

  v14 = 0.0;
  v15 = 0.0;
  v16 = v13;
  if (![(CarNavigationGuidanceSign *)self _shouldForceSecondaryManeuverViewHidden])
  {
    v17 = [(CarNavigationGuidanceSign *)self secondaryManeuverView];
    v16 = v13;
    if (v17)
    {

      v18 = [(CarNavigationGuidanceSign *)self secondaryManeuverView];
      [v18 sizeForCompressionStage:0];
      v15 = v19;

      v16 = v15 + v13;
      if (v15 > 0.0)
      {
        v20 = [(CarNavigationGuidanceSign *)self hairlineView];
        [v20 frame];
        v16 = CGRectGetHeight(v43) + v16;
      }
    }
  }

  if (v10)
  {
    v21 = [(CarNavigationGuidanceSign *)self junctionView];
    [v21 bounds];
    v14 = CGRectGetWidth(v44) * 0.352657005;

    v16 = v16 - v15 + v14;
  }

  if (a4)
  {
    *a4 = 0;
  }

  v22 = sub_10007E168();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
  {
    v23 = [(CarNavigationGuidanceSign *)self destination];
    if (v23 > 4)
    {
      v24 = @".Unknown";
    }

    else
    {
      v24 = *(&off_101623A48 + v23);
    }

    v25 = v24;
    *buf = 138414082;
    v28 = v25;
    v29 = 2048;
    v30 = self;
    v31 = 2048;
    v32 = a3;
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

- (void)_hideMiniSignAnimated:(BOOL)a3
{
  v3 = a3;
  [(CarNavigationGuidanceSign *)self layoutIfNeeded];
  [(NSLayoutConstraint *)self->_primaryViewTopAnchorMiniSignConstraint setActive:0];
  [(NSLayoutConstraint *)self->_primaryViewTopAnchorRegularConstraint setActive:1];
  if (v3)
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
    v3 = [(CarNavigationGuidanceSign *)self window];
    if (v3 && (GEOConfigGetBOOL() & 1) != 0)
    {
      v4 = [(CarNavigationGuidanceSign *)self miniSignAutoHideTimer];

      if (!v4)
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

- (void)setSignStyle:(int64_t)a3
{
  if (self->_signStyle != a3)
  {
    self->_signStyle = a3;
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

- (CarNavigationGuidanceSign)initWithDestination:(unint64_t)a3
{
  v146.receiver = self;
  v146.super_class = CarNavigationGuidanceSign;
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v7 = [(CarNavigationGuidanceSign *)&v146 initWithFrame:CGRectZero.origin.x, y, width, height];
  v8 = v7;
  if (v7)
  {
    [(CarNavigationGuidanceSign *)v7 setAccessibilityIdentifier:@"CarNavigationGuidanceSign"];
    v138 = a3;
    v8->_destination = a3;
    v9 = [(CarNavigationGuidanceSign *)v8 destination];
    v10 = v9 - 1 < 2 || v9 == 4;
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
    v18 = [v17 supportsTouchInteractionModel];

    v19 = +[NSBundle mainBundle];
    v20 = v19;
    if (v18)
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
    v28 = [(UIView *)v8->_primaryView topAnchor];
    v29 = [(UILabel *)v8->_miniSignHintLabel bottomAnchor];
    v30 = [v28 constraintEqualToAnchor:v29];
    primaryViewTopAnchorMiniSignConstraint = v8->_primaryViewTopAnchorMiniSignConstraint;
    v8->_primaryViewTopAnchorMiniSignConstraint = v30;

    v32 = [(UIView *)v8->_primaryView topAnchor];
    v33 = [(CarNavigationGuidanceSign *)v8 topAnchor];
    v34 = [v32 constraintEqualToAnchor:v33];
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
    if (v9 <= 4 && ((1 << v9) & 0x16) != 0)
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
    v135 = [(UILabel *)v8->_miniSignHintLabel topAnchor];
    v132 = [(CarNavigationGuidanceSign *)v8 topAnchor];
    v129 = [v135 constraintEqualToAnchor:v132 constant:9.0];
    v153[0] = v129;
    v127 = [(UILabel *)v8->_miniSignHintLabel leadingAnchor];
    v125 = [(CarNavigationGuidanceSign *)v8 leadingAnchor];
    v123 = [v127 constraintGreaterThanOrEqualToAnchor:v125 constant:9.0];
    v153[1] = v123;
    v121 = [(UILabel *)v8->_miniSignHintLabel trailingAnchor];
    v119 = [(CarNavigationGuidanceSign *)v8 trailingAnchor];
    v117 = [v121 constraintLessThanOrEqualToAnchor:v119 constant:-9.0];
    v153[2] = v117;
    v115 = [(UILabel *)v8->_miniSignHintLabel centerXAnchor];
    v46 = [(CarNavigationGuidanceSign *)v8 centerXAnchor];
    v47 = [v115 constraintEqualToAnchor:v46];
    v153[3] = v47;
    v153[4] = v8->_primaryViewTopAnchorMiniSignConstraint;
    v48 = [(UIView *)v8->_primaryView leadingAnchor];
    v49 = [(CarNavigationGuidanceSign *)v8 leadingAnchor];
    v50 = [v48 constraintEqualToAnchor:v49];
    v153[5] = v50;
    v51 = [(UIView *)v8->_primaryView trailingAnchor];
    v52 = [(CarNavigationGuidanceSign *)v8 trailingAnchor];
    v53 = [v51 constraintEqualToAnchor:v52];
    v153[6] = v53;
    v54 = [NSArray arrayWithObjects:v153 count:7];
    v145 = [v54 mutableCopy];

    if (v138 <= 1)
    {
      v55 = objc_alloc_init(NavJunctionViewController);
      junctionViewController = v8->_junctionViewController;
      v8->_junctionViewController = v55;

      [(NavJunctionViewController *)v8->_junctionViewController setDelegate:v8];
      [(NavJunctionViewController *)v8->_junctionViewController setLightModeSource:0];
      v57 = [(CarNavigationGuidanceSign *)v8 junctionView];
      [v57 setTranslatesAutoresizingMaskIntoConstraints:0];

      v58 = [(CarNavigationGuidanceSign *)v8 junctionView];
      LODWORD(v59) = 1132068864;
      [v58 setContentCompressionResistancePriority:1 forAxis:v59];

      v60 = [(CarNavigationGuidanceSign *)v8 junctionView];
      LODWORD(v61) = 1132068864;
      [v60 setContentCompressionResistancePriority:0 forAxis:v61];

      v62 = [(CarNavigationGuidanceSign *)v8 junctionView];
      [v62 setHidden:1];

      v63 = [(CarNavigationGuidanceSign *)v8 junctionView];
      [(CarNavigationGuidanceSign *)v8 insertSubview:v63 aboveSubview:v8->_secondaryView];

      v139 = [(CarNavigationGuidanceSign *)v8 junctionView];
      v136 = [v139 leadingAnchor];
      v133 = [(CarNavigationGuidanceSign *)v8 leadingAnchor];
      v130 = [v136 constraintEqualToAnchor:v133];
      v152[0] = v130;
      v64 = [(CarNavigationGuidanceSign *)v8 junctionView];
      v65 = [v64 trailingAnchor];
      v66 = [(CarNavigationGuidanceSign *)v8 trailingAnchor];
      v67 = [v65 constraintEqualToAnchor:v66];
      v152[1] = v67;
      v68 = [(CarNavigationGuidanceSign *)v8 junctionView];
      v69 = [v68 topAnchor];
      v70 = [(UIView *)v8->_primaryView bottomAnchor];
      v71 = [v69 constraintEqualToAnchor:v70];
      v152[2] = v71;
      v72 = [NSArray arrayWithObjects:v152 count:3];
      [v145 addObjectsFromArray:v72];

      v73 = [(CarNavigationGuidanceSign *)v8 junctionView];
      v74 = [v73 bottomAnchor];
      v75 = [(CarNavigationGuidanceSign *)v8 bottomAnchor];
      v76 = [v74 constraintEqualToAnchor:v75];
      v151 = v76;
      v77 = [NSArray arrayWithObjects:&v151 count:1];
      [(CarNavigationGuidanceSign *)v8 setJunctionViewConstraints:v77];
    }

    [NSLayoutConstraint activateConstraints:v145];
    v78 = [(UIView *)v8->_primaryView bottomAnchor];
    v79 = [(CarNavigationGuidanceSign *)v8 bottomAnchor];
    LODWORD(v80) = 1148846080;
    v81 = [v78 constraintEqualToAnchor:v79 constant:0.0 priority:v80];
    v150 = v81;
    v82 = [NSArray arrayWithObjects:&v150 count:1];
    [(CarNavigationGuidanceSign *)v8 setPrimaryViewOnlyConstraints:v82];

    v83 = [(UIView *)v8->_secondaryView heightAnchor];
    v84 = [v83 constraintLessThanOrEqualToConstant:200.0];
    secondaryViewHeightConstraint = v8->_secondaryViewHeightConstraint;
    v8->_secondaryViewHeightConstraint = v84;

    v86 = [(CarNavigationGuidanceSign *)v8 primaryViewOnlyConstraints];
    [NSLayoutConstraint activateConstraints:v86];

    v149 = v8->_secondaryViewHeightConstraint;
    v87 = [NSArray arrayWithObjects:&v149 count:1];
    [NSLayoutConstraint activateConstraints:v87];

    v142 = [(UIView *)v8->_primaryView bottomAnchor];
    v140 = [(CarHairlineView *)v8->_hairlineView topAnchor];
    LODWORD(v88) = 1148846080;
    v137 = [v142 constraintEqualToAnchor:v140 constant:0.0 priority:v88];
    v148[0] = v137;
    v134 = [(CarHairlineView *)v8->_hairlineView leftAnchor];
    v131 = [(CarNavigationGuidanceSign *)v8 leftAnchor];
    v128 = [v134 constraintEqualToAnchor:v131];
    v148[1] = v128;
    v126 = [(CarHairlineView *)v8->_hairlineView rightAnchor];
    v124 = [(CarNavigationGuidanceSign *)v8 rightAnchor];
    v122 = [v126 constraintEqualToAnchor:v124];
    v148[2] = v122;
    v141 = [(CarHairlineView *)v8->_hairlineView bottomAnchor];
    v120 = [(UIView *)v8->_secondaryView topAnchor];
    LODWORD(v89) = 1148846080;
    v118 = [v141 constraintEqualToAnchor:v120 constant:0.0 priority:v89];
    v148[3] = v118;
    v116 = [(UIView *)v8->_secondaryView leadingAnchor];
    v90 = [(CarNavigationGuidanceSign *)v8 leadingAnchor];
    v91 = [v116 constraintEqualToAnchor:v90];
    v148[4] = v91;
    v92 = [(UIView *)v8->_secondaryView trailingAnchor];
    v93 = [(CarNavigationGuidanceSign *)v8 trailingAnchor];
    v94 = [v92 constraintEqualToAnchor:v93];
    v148[5] = v94;
    v95 = [(UIView *)v8->_secondaryView bottomAnchor];
    v96 = [(CarNavigationGuidanceSign *)v8 bottomAnchor];
    LODWORD(v97) = 1148846080;
    v98 = [v95 constraintEqualToAnchor:v96 constant:0.0 priority:v97];
    v148[6] = v98;
    v99 = [NSArray arrayWithObjects:v148 count:7];
    [(CarNavigationGuidanceSign *)v8 setSecondaryViewConstraints:v99];

    v100 = objc_alloc_init(UILayoutGuide);
    minimumCompressedContentLayoutGuide = v8->_minimumCompressedContentLayoutGuide;
    v8->_minimumCompressedContentLayoutGuide = v100;

    [(CarNavigationGuidanceSign *)v8 addLayoutGuide:v8->_minimumCompressedContentLayoutGuide];
    v102 = [(UILayoutGuide *)v8->_minimumCompressedContentLayoutGuide heightAnchor];
    v103 = [v102 constraintEqualToConstant:0.0];
    [(CarNavigationGuidanceSign *)v8 setMinimumCompressedContentLayoutGuideHeightConstraint:v103];

    v144 = [(UILayoutGuide *)v8->_minimumCompressedContentLayoutGuide leadingAnchor];
    v143 = [(CarNavigationGuidanceSign *)v8 leadingAnchor];
    v104 = [v144 constraintEqualToAnchor:v143];
    v147[0] = v104;
    v105 = [(CarNavigationGuidanceSign *)v8 trailingAnchor];
    v106 = [(UILayoutGuide *)v8->_minimumCompressedContentLayoutGuide trailingAnchor];
    v107 = [v105 constraintEqualToAnchor:v106];
    v147[1] = v107;
    v108 = [(UILayoutGuide *)v8->_minimumCompressedContentLayoutGuide topAnchor];
    v109 = [(CarNavigationGuidanceSign *)v8 topAnchor];
    v110 = [v108 constraintEqualToAnchor:v109];
    v147[2] = v110;
    v111 = [(CarNavigationGuidanceSign *)v8 minimumCompressedContentLayoutGuideHeightConstraint];
    v147[3] = v111;
    v112 = [NSArray arrayWithObjects:v147 count:4];
    [NSLayoutConstraint activateConstraints:v112];

    v113 = [(CarNavigationGuidanceSign *)v8 sizeProvider];
    v8->_layoutType = [v113 maneuverViewLayoutType];
  }

  return v8;
}

@end