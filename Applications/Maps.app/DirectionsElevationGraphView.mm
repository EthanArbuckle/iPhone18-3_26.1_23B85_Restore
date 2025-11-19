@interface DirectionsElevationGraphView
- (DirectionsElevationGraphView)initWithConfiguration:(id)a3;
- (double)_estimatedElevationAxisWidth;
- (double)_targetChartDrawingWidth;
- (id)_chartStyle;
- (id)_stringForAxesWithElevation:(double)a3;
- (id)_stringForAxesWithOffset:(double)a3;
- (id)_stringForAxesWithOffsetInMeters:(double)a3;
- (unint64_t)_numberOfBarsForCurrentWidth;
- (void)_prepareForFirstUse;
- (void)_unitsDidChange;
- (void)_updateChartView;
- (void)_updateChartViewIfNeeded;
- (void)_updateMeasurementUnits;
- (void)layoutSubviews;
- (void)setConfiguration:(id)a3;
- (void)setElevationProfile:(id)a3 routeLength:(double)a4;
- (void)setNavigationProgress:(double)a3;
- (void)setSelected:(BOOL)a3;
@end

@implementation DirectionsElevationGraphView

- (id)_stringForAxesWithElevation:(double)a3
{
  v5 = self->_elevationFormatter;
  v6 = [[NSMeasurement alloc] initWithDoubleValue:self->_elevationUnit unit:a3];
  v7 = [(NSMeasurementFormatter *)v5 stringFromMeasurement:v6];

  return v7;
}

- (id)_stringForAxesWithOffsetInMeters:(double)a3
{
  if (a3 == 0.0)
  {
    v4 = objc_alloc_init(NSMeasurementFormatter);
    [v4 setUnitOptions:1];
    v5 = [v4 numberFormatter];
    [v5 setMaximumFractionDigits:0];

    v6 = [v4 numberFormatter];
    [v6 setMinimumFractionDigits:0];

    routeLength = self->_routeLength;
    if (self->_metric)
    {
      if (routeLength >= 1000.0)
      {
        +[NSUnitLength kilometers];
      }

      else
      {
        +[NSUnitLength meters];
      }
    }

    else if (routeLength * 3.2808399 >= 5280.0)
    {
      +[NSUnitLength miles];
    }

    else
    {
      +[NSUnitLength feet];
    }
    v8 = ;
    v9 = v8;
    v10 = [[NSMeasurement alloc] initWithDoubleValue:v8 unit:0.0];
    v11 = [v4 stringFromMeasurement:v10];
  }

  else
  {
    v11 = [NSString _navigation_localizedStringForDistance:0 detail:1 unitFormat:0 locale:0 useMetric:0 useYards:?];
  }

  return v11;
}

- (id)_stringForAxesWithOffset:(double)a3
{
  if (!self->_metric)
  {
    a3 = a3 * 0.3048;
  }

  return [(DirectionsElevationGraphView *)self _stringForAxesWithOffsetInMeters:a3];
}

- (double)_targetChartDrawingWidth
{
  v3 = [(DirectionsElevationGraphView *)self _numberOfBarsForCurrentWidth];
  [(DirectionsElevationGraphConfiguration *)self->_configuration barWidth];
  v5 = v4;
  [(DirectionsElevationGraphConfiguration *)self->_configuration gapWidth];
  v7 = (v6 + v5) * v3;
  [(DirectionsElevationGraphConfiguration *)self->_configuration gapWidth];
  v9 = v8;
  result = 0.0;
  if (v7 >= v9)
  {
    v11 = [(DirectionsElevationGraphView *)self _numberOfBarsForCurrentWidth];
    [(DirectionsElevationGraphConfiguration *)self->_configuration barWidth];
    v13 = v12;
    [(DirectionsElevationGraphConfiguration *)self->_configuration gapWidth];
    v15 = v14 + v13;
    [(DirectionsElevationGraphConfiguration *)self->_configuration gapWidth];
    return -(v16 - v15 * v11);
  }

  return result;
}

- (double)_estimatedElevationAxisWidth
{
  v3 = [(DirectionsElevationGraphView *)self elevationProfile];
  if ([v3 isValid])
  {
    v4 = [(DirectionsElevationGraphConfiguration *)self->_configuration showsElevationAxisLabels];

    v5 = 0.0;
    if (v4)
    {
      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v6 = [(DirectionsElevationGraphView *)self elevationProfile];
      v7 = [v6 points];

      v8 = [v7 countByEnumeratingWithState:&v27 objects:v37 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v28;
        v11 = 0x80000000;
        do
        {
          for (i = 0; i != v9; i = i + 1)
          {
            if (*v28 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v13 = *(*(&v27 + 1) + 8 * i);
            if (v11 <= [v13 elevationCm])
            {
              v11 = [v13 elevationCm];
            }
          }

          v9 = [v7 countByEnumeratingWithState:&v27 objects:v37 count:16];
        }

        while (v9);
        v14 = v11 * 0.01;
      }

      else
      {
        v14 = -21474836.5;
      }

      v15 = 3.2808399;
      if (self->_metric)
      {
        v15 = 1.0;
      }

      v16 = [(DirectionsElevationGraphView *)self _stringForAxesWithElevation:v14 * v15];
      v17 = [UIFontDescriptor preferredFontDescriptorWithTextStyle:UIFontTextStyleCaption2];
      v35 = UIFontWeightTrait;
      v18 = [NSNumber numberWithDouble:UIFontWeightMedium];
      v36 = v18;
      v19 = [NSDictionary dictionaryWithObjects:&v36 forKeys:&v35 count:1];

      v33 = UIFontDescriptorTraitsAttribute;
      v34 = v19;
      v20 = [NSDictionary dictionaryWithObjects:&v34 forKeys:&v33 count:1];
      v21 = [v17 fontDescriptorByAddingAttributes:v20];

      v22 = [UIFont fontWithDescriptor:v21 size:0.0];
      v31 = NSFontAttributeName;
      v32 = v22;
      v23 = [NSDictionary dictionaryWithObjects:&v32 forKeys:&v31 count:1];
      [v16 sizeWithAttributes:v23];
      v25 = v24;

      v5 = v25 + 8.0;
    }
  }

  else
  {

    return 0.0;
  }

  return v5;
}

- (unint64_t)_numberOfBarsForCurrentWidth
{
  [(UIView *)self->_chartContainerView bounds];
  Width = CGRectGetWidth(v10);
  if (fabs(Width) <= 2.22044605e-16)
  {
    return 0;
  }

  [(DirectionsElevationGraphView *)self _estimatedElevationAxisWidth];
  v5 = Width - v4;
  configuration = self->_configuration;
  routeLength = self->_routeLength;

  return [(DirectionsElevationGraphConfiguration *)configuration targetNumberOfBarsForRouteLength:routeLength availableWidth:v5];
}

- (void)_unitsDidChange
{
  v3 = +[NSLocale currentLocale];
  self->_metric = [v3 _navigation_distanceUsesMetricSystem];

  v4 = sub_1007993AC();
  if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    goto LABEL_11;
  }

  v5 = self;
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  if (objc_opt_respondsToSelector())
  {
    v8 = [(DirectionsElevationGraphView *)v5 performSelector:"accessibilityIdentifier"];
    v9 = v8;
    if (v8 && ![v8 isEqualToString:v7])
    {
      v10 = [NSString stringWithFormat:@"%@<%p, %@>", v7, v5, v9];

      goto LABEL_7;
    }
  }

  v10 = [NSString stringWithFormat:@"%@<%p>", v7, v5];
LABEL_7:

  if (self->_metric)
  {
    v11 = "metric";
  }

  else
  {
    v11 = "imperial";
  }

  *buf = 138412546;
  v13 = v10;
  v14 = 2080;
  v15 = v11;
  _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "%@ | Notified units changed to %s", buf, 0x16u);

LABEL_11:
  [(DirectionsElevationGraphView *)self _updateMeasurementUnits];
  [(DirectionsElevationGraphView *)self _updateChartView];
}

- (void)_updateMeasurementUnits
{
  if (self->_metric)
  {
    +[NSUnitLength meters];
  }

  else
  {
    +[NSUnitLength feet];
  }
  v3 = ;
  objc_storeStrong(&self->_elevationUnit, v3);

  v4 = sub_1007993AC();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = self;
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    if (objc_opt_respondsToSelector())
    {
      v8 = [(DirectionsElevationGraphView *)v5 performSelector:"accessibilityIdentifier"];
      v9 = v8;
      if (v8 && ![v8 isEqualToString:v7])
      {
        v10 = [NSString stringWithFormat:@"%@<%p, %@>", v7, v5, v9];

        goto LABEL_10;
      }
    }

    v10 = [NSString stringWithFormat:@"%@<%p>", v7, v5];
LABEL_10:

    elevationUnit = self->_elevationUnit;
    *buf = 138412546;
    v13 = v10;
    v14 = 2112;
    v15 = elevationUnit;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "%@ | Will use '%@' for elevation", buf, 0x16u);
  }
}

- (void)_updateChartView
{
  [(UIView *)self->_chartSubcontainerView removeFromSuperview];
  chartViewController = self->_chartViewController;
  self->_chartViewController = 0;

  [(DirectionsElevationGraphView *)self _targetChartDrawingWidth];
  v5 = v4;
  self->_chartUsedWidth = v4;
  if (v4 >= 2.22044605e-16)
  {
    v6 = [NSMeasurement alloc];
    progressInMeters = self->_progressInMeters;
    v8 = +[NSUnitLength meters];
    v22 = [v6 initWithDoubleValue:v8 unit:progressInMeters];

    elevationProfile = self->_elevationProfile;
    metric = self->_metric;
    v11 = [(DirectionsElevationGraphView *)self traitCollection];
    selected = self->_selected;
    v13 = [(DirectionsElevationGraphView *)self _chartStyle];
    v14 = [_TtC4Maps32MapsElevationGraphViewController makeHostingControllerFor:elevationProfile width:metric isMetric:v11 traitCollection:selected shouldHighlight:v13 chartStyle:v22 currentPosition:v5];
    v15 = self->_chartViewController;
    self->_chartViewController = v14;

    v16 = [(UIViewController *)self->_chartViewController view];
    chartSubcontainerView = self->_chartSubcontainerView;
    self->_chartSubcontainerView = v16;

    [(UIView *)self->_chartSubcontainerView setTranslatesAutoresizingMaskIntoConstraints:0];
    v18 = +[UIColor clearColor];
    [(UIView *)self->_chartSubcontainerView setBackgroundColor:v18];

    [(UIView *)self->_chartContainerView addSubview:self->_chartSubcontainerView];
    LODWORD(v19) = 1148846080;
    v20 = [(UIView *)self->_chartSubcontainerView _maps_constraintsEqualToEdgesOfView:self->_chartContainerView priority:v19];
    v21 = [v20 allConstraints];
    [NSLayoutConstraint activateConstraints:v21];
  }
}

- (id)_chartStyle
{
  v2 = [(DirectionsElevationGraphConfiguration *)self->_configuration useType];
  if (v2 == 2)
  {
    v2 = +[_TtC4Maps23MapsElevationChartStyle navigationDetailStyle];
  }

  else if (v2 == 1)
  {
    v2 = +[_TtC4Maps23MapsElevationChartStyle routePlanningMiniLineStyle];
  }

  else if (!v2)
  {
    v2 = +[_TtC4Maps23MapsElevationChartStyle navigationLineStyle];
  }

  return v2;
}

- (void)_updateChartViewIfNeeded
{
  [(DirectionsElevationGraphView *)self _targetChartDrawingWidth];
  if (self->_chartViewController != 0 && v3 < 2.22044605e-16 || vabdd_f64(v3, self->_chartUsedWidth) >= 1.0)
  {

    [(DirectionsElevationGraphView *)self _updateChartView];
  }
}

- (void)setSelected:(BOOL)a3
{
  if (self->_selected != a3)
  {
    self->_selected = a3;
    [(DirectionsElevationGraphView *)self _updateChartView];
  }
}

- (void)setNavigationProgress:(double)a3
{
  if (vabdd_f64(a3, self->_progressInMeters) >= self->_chartUpdateDistanceThreshold)
  {
    self->_progressInMeters = a3;
    [(DirectionsElevationGraphView *)self _updateChartView];
  }
}

- (void)setElevationProfile:(id)a3 routeLength:(double)a4
{
  v6 = a3;
  elevationProfile = self->_elevationProfile;
  v8 = v6;
  v9 = elevationProfile;
  if (v8 | v9 && (v10 = v9, v11 = [v8 isEqual:v9], v10, v8, !v11) || vabdd_f64(self->_routeLength, a4) > 2.22044605e-16)
  {
    v12 = sub_1007993AC();
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
LABEL_11:

      v19 = [v8 copy];
      v20 = self->_elevationProfile;
      self->_elevationProfile = v19;

      self->_routeLength = a4;
      [(DirectionsElevationGraphView *)self _updateChartView];
      goto LABEL_12;
    }

    v13 = self;
    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    if (objc_opt_respondsToSelector())
    {
      v16 = [(DirectionsElevationGraphView *)v13 performSelector:"accessibilityIdentifier"];
      v17 = v16;
      if (v16 && ![v16 isEqualToString:v15])
      {
        v18 = [NSString stringWithFormat:@"%@<%p, %@>", v15, v13, v17];

        goto LABEL_10;
      }
    }

    v18 = [NSString stringWithFormat:@"%@<%p>", v15, v13];
LABEL_10:

    *buf = 138412802;
    v22 = v18;
    v23 = 2048;
    v24 = [v8 pointsCount];
    v25 = 2048;
    v26 = a4;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "%@ | Updating elevation profile (%lu points, %#.2fm length)", buf, 0x20u);

    goto LABEL_11;
  }

LABEL_12:
}

- (void)setConfiguration:(id)a3
{
  v5 = a3;
  v6 = self->_configuration;
  v7 = v5;
  if (v7 | v6)
  {
    v8 = [v6 isEqual:v7];

    if ((v8 & 1) == 0)
    {
      v9 = sub_1007993AC();
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
LABEL_10:

        objc_storeStrong(&self->_configuration, a3);
        [(DirectionsElevationGraphView *)self _updateChartView];
        goto LABEL_11;
      }

      v10 = self;
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      if (objc_opt_respondsToSelector())
      {
        v13 = [(DirectionsElevationGraphView *)v10 performSelector:"accessibilityIdentifier"];
        v14 = v13;
        if (v13 && ![v13 isEqualToString:v12])
        {
          v15 = [NSString stringWithFormat:@"%@<%p, %@>", v12, v10, v14];

          goto LABEL_9;
        }
      }

      v15 = [NSString stringWithFormat:@"%@<%p>", v12, v10];
LABEL_9:

      *buf = 138412290;
      v17 = v15;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "%@ | Updating configuration", buf, 0xCu);

      goto LABEL_10;
    }
  }

LABEL_11:
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = DirectionsElevationGraphView;
  [(DirectionsElevationGraphView *)&v3 layoutSubviews];
  [(DirectionsElevationGraphView *)self _updateChartViewIfNeeded];
}

- (void)_prepareForFirstUse
{
  [(DirectionsElevationGraphView *)self setOpaque:0];
  v3 = +[UIColor clearColor];
  [(DirectionsElevationGraphView *)self setBackgroundColor:v3];

  v4 = objc_alloc_init(NSMeasurementFormatter);
  elevationFormatter = self->_elevationFormatter;
  self->_elevationFormatter = v4;

  [(NSMeasurementFormatter *)self->_elevationFormatter setUnitOptions:1];
  v6 = [(NSMeasurementFormatter *)self->_elevationFormatter numberFormatter];
  [v6 setMaximumFractionDigits:0];

  v7 = +[NSLocale currentLocale];
  self->_metric = [v7 _navigation_distanceUsesMetricSystem];

  [(DirectionsElevationGraphView *)self _updateMeasurementUnits];
  v8 = +[NSNotificationCenter defaultCenter];
  v9 = MNLocaleDidChangeNotification();
  [v8 addObserver:self selector:"_unitsDidChange" name:v9 object:0];

  v10 = +[UIColor clearColor];
  [(DirectionsElevationGraphView *)self setBackgroundColor:v10];

  v11 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  [(UIView *)v11 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIView *)v11 setAccessibilityIdentifier:@"ChartContainerView"];
  [(DirectionsElevationGraphView *)self addSubview:v11];
  chartContainerView = self->_chartContainerView;
  self->_chartContainerView = v11;
  v13 = v11;

  v17 = objc_alloc_init(NSMutableArray);
  LODWORD(v14) = 1148846080;
  v15 = [(UIView *)v13 _maps_constraintsEqualToEdgesOfView:self priority:v14];
  v16 = [v15 allConstraints];
  [NSLayoutConstraint activateConstraints:v16];

  [NSLayoutConstraint activateConstraints:v17];
}

- (DirectionsElevationGraphView)initWithConfiguration:(id)a3
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = DirectionsElevationGraphView;
  v6 = [(DirectionsElevationGraphView *)&v12 initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_configuration, a3);
    GEOConfigGetDouble();
    v7->_chartUpdateDistanceThreshold = v8;
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    [(DirectionsElevationGraphView *)v7 setAccessibilityIdentifier:v10];

    [(DirectionsElevationGraphView *)v7 _prepareForFirstUse];
  }

  return v7;
}

@end