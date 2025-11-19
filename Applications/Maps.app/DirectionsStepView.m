@interface DirectionsStepView
+ ($8452678F12DBC466148836A9D382CAFC)cellMetricsForIdiom:(SEL)a3;
+ (double)_heightForRoadDescriptionViewWithStep:(id)a3 forWidth:(double)a4;
+ (double)_textWidthForWidth:(double)a3 withManeuver:(BOOL)a4 metrics:(id *)a5;
+ (double)heightForWidth:(double)a3 route:(id)a4 step:(id)a5 idiom:(int64_t)a6;
+ (id)_multiPartAttributedStringForRoadDescriptionsInStep:(id)a3;
+ (id)_roadDescriptionsLabelForStep:(id)a3 width:(double)a4;
- (double)_dimAlpha;
- (id)_majorLabelColor;
- (id)_minorLabelColor;
- (id)_shieldImageFromStep:(id)a3 route:(id)a4 shieldSize:(int64_t)a5;
- (id)signView;
- (void)_updateSignViewForStep:(id)a3 maneuverImage:(id)a4 route:(id)a5;
- (void)_updateStyleValuesFromTheme;
- (void)layoutSubviews;
- (void)setIsDimmedStep:(BOOL)a3;
- (void)setIsSelectedRow:(BOOL)a3;
- (void)setRoute:(id)a3 step:(id)a4 stepIndex:(unint64_t)a5 alignToLeftEdgeIfNoManeuverSign:(BOOL)a6 size:(int64_t)a7;
- (void)setTrailingView:(id)a3;
@end

@implementation DirectionsStepView

- (id)_minorLabelColor
{
  v3 = +[UIColor secondaryLabelColor];
  if (self->_isDimmedStep)
  {
    [(DirectionsStepView *)self _dimAlpha];
    v4 = [v3 colorWithAlphaComponent:?];

    v3 = v4;
  }

  return v3;
}

- (id)_majorLabelColor
{
  v3 = +[UIColor labelColor];
  if (self->_isDimmedStep)
  {
    [(DirectionsStepView *)self _dimAlpha];
    v4 = [v3 colorWithAlphaComponent:?];

    v3 = v4;
  }

  return v3;
}

- (void)_updateStyleValuesFromTheme
{
  v3 = 1.0;
  if (self->_isDimmedStep)
  {
    [(DirectionsStepView *)self _dimAlpha];
  }

  [(SimpleSignView *)self->_signView setAlpha:v3];
  v4 = [(LabelListView *)self->_labelListView labels];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100659DDC;
  v5[3] = &unk_101624DA0;
  v5[4] = self;
  [v4 enumerateObjectsUsingBlock:v5];
  [(SimpleSignView *)self->_signView updateStyleForTheme];
}

- (double)_dimAlpha
{
  v2 = [(DirectionsStepView *)self traitCollection];
  v3 = dbl_101212820[[v2 userInterfaceStyle] == 2];

  return v3;
}

- (void)setIsDimmedStep:(BOOL)a3
{
  if (self->_isDimmedStep != a3)
  {
    self->_isDimmedStep = a3;
    [(DirectionsStepView *)self _updateStyleValuesFromTheme];
  }
}

- (void)setIsSelectedRow:(BOOL)a3
{
  if (self->_isSelectedRow != a3)
  {
    self->_isSelectedRow = a3;
    [(DirectionsStepView *)self _updateStyleValuesFromTheme];
  }
}

- (id)signView
{
  signView = self->_signView;
  if (!signView)
  {
    v10 = 0u;
    v4 = objc_opt_class();
    v5 = [(DirectionsStepView *)self traitCollection:0];
    v6 = [v5 userInterfaceIdiom];
    if (v4)
    {
      [v4 cellMetricsForIdiom:v6];
    }

    else
    {
      v10 = 0u;
    }

    v7 = [[SimpleSignView alloc] initWithFrame:0.0, 0.0, *(&v10 + 1), 0.0];
    v8 = self->_signView;
    self->_signView = v7;

    [(SimpleSignView *)self->_signView setManeuverViewEdgeInsets:5.0, 5.0, 5.0, 5.0];
    signView = self->_signView;
  }

  return signView;
}

- (void)_updateSignViewForStep:(id)a3 maneuverImage:(id)a4 route:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = [v7 drivingSide];
  [(DirectionsStepView *)self _updateStyleValuesFromTheme];
  v10 = [v7 junction];
  if (v10)
  {
    v11 = [MKJunction alloc];
    v12 = [v7 junction];
    v13 = [v11 initWithJunction:v12];
  }

  else
  {
    v13 = 0;
  }

  v14 = [GuidanceManeuverArtwork alloc];
  v15 = [v7 maneuverType];
  v16 = [v7 artworkOverride];
  v17 = [(GuidanceManeuverArtwork *)v14 initWithManeuver:v15 junction:v13 drivingSide:v9 artworkDataSource:v16];
  v18 = [(SimpleSignView *)self->_signView maneuverView];
  [v18 setManeuverArtwork:v17];

  v19 = [(SimpleSignView *)self->_signView maneuverView];
  [v19 setFraming:1];

  v20 = objc_opt_class();
  if (v20)
  {
    [v20 arrowMetrics];
  }

  else
  {
    memset(__src, 0, sizeof(__src));
  }

  v21 = [(SimpleSignView *)self->_signView maneuverView];
  memcpy(__dst, __src, sizeof(__dst));
  [v21 setArrowMetrics:__dst];

  v22 = objc_opt_class();
  if (v22)
  {
    [v22 junctionArrowMetrics];
  }

  else
  {
    memset(v28, 0, sizeof(v28));
  }

  v23 = [(SimpleSignView *)self->_signView maneuverView:v28[0]];
  memcpy(__dst, v28, sizeof(__dst));
  [v23 setJunctionArrowMetrics:__dst];

  if ([v7 isEVChargerStep])
  {
    v24 = +[GEOFeatureStyleAttributes evChargerStyleAttributes];
    v25 = [objc_opt_class() signViewIconSize];
    v26 = +[UIScreen mainScreen];
    [v26 scale];
    v27 = [MKIconManager imageForStyle:v24 size:v25 forScale:0 format:?];
    [(SimpleSignView *)self->_signView setShieldImage:v27];
  }

  else
  {
    [(SimpleSignView *)self->_signView setShieldImage:v8];
  }
}

- (id)_shieldImageFromStep:(id)a3 route:(id)a4 shieldSize:(int64_t)a5
{
  v7 = a3;
  v8 = a4;
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = sub_10065A598;
  v25 = sub_10065A5A8;
  v26 = 0;
  v9 = [v7 geoStep];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10065A5B0;
  v20[3] = &unk_101660090;
  v20[4] = &v27;
  v20[5] = &v21;
  [v9 shieldInfo:v20];

  v10 = [v7 geoStep];
  if ([v10 maneuverType] == 12)
  {
    v11 = *(v28 + 6);

    if (v11)
    {
      goto LABEL_3;
    }

LABEL_6:
    v17 = 0;
    goto LABEL_9;
  }

  v12 = [v7 geoStep];
  if (![v12 maneuverIsHighwayExit])
  {
    v17 = 0;
    goto LABEL_8;
  }

  v18 = *(v28 + 6);

  if (!v18)
  {
    goto LABEL_6;
  }

LABEL_3:
  v10 = objc_alloc_init(VKIconModifiers);
  [v10 setText:v22[5]];
  v12 = +[VKIconManager sharedManager];
  v13 = *(v28 + 6);
  v14 = v22[5];
  v15 = +[UIScreen mainScreen];
  [v15 scale];
  *&v16 = v16;
  v17 = [v12 imageForDataID:v13 text:v14 contentScale:a5 sizeGroup:v10 modifiers:v16];

LABEL_8:
LABEL_9:
  _Block_object_dispose(&v21, 8);

  _Block_object_dispose(&v27, 8);

  return v17;
}

- (void)setTrailingView:(id)a3
{
  v5 = a3;
  trailingView = self->_trailingView;
  if (trailingView != v5)
  {
    [(UIView *)trailingView removeFromSuperview];
    objc_storeStrong(&self->_trailingView, a3);
    [(UIView *)self->_trailingView _mapkit_fittingSize];
    [(NSLayoutConstraint *)self->_trailingGuideWidth setConstant:?];
    if (self->_trailingView)
    {
      [(DirectionsStepView *)self addSubview:?];
      v19 = [(UIView *)self->_trailingView topAnchor];
      v18 = [(UILayoutGuide *)self->_trailingViewGuide topAnchor];
      v17 = [v19 constraintGreaterThanOrEqualToAnchor:v18];
      v20[0] = v17;
      v16 = [(UIView *)self->_trailingView bottomAnchor];
      v15 = [(UILayoutGuide *)self->_trailingViewGuide bottomAnchor];
      v7 = [v16 constraintLessThanOrEqualToAnchor:v15];
      v20[1] = v7;
      v8 = [(UIView *)self->_trailingView leadingAnchor];
      v9 = [(UILayoutGuide *)self->_trailingViewGuide leadingAnchor];
      v10 = [v8 constraintEqualToAnchor:v9];
      v20[2] = v10;
      v11 = [(UIView *)self->_trailingView trailingAnchor];
      v12 = [(UILayoutGuide *)self->_trailingViewGuide trailingAnchor];
      v13 = [v11 constraintEqualToAnchor:v12];
      v20[3] = v13;
      v14 = [NSArray arrayWithObjects:v20 count:4];
      [NSLayoutConstraint activateConstraints:v14];
    }

    [(DirectionsStepView *)self setNeedsLayout];
  }
}

- (void)setRoute:(id)a3 step:(id)a4 stepIndex:(unint64_t)a5 alignToLeftEdgeIfNoManeuverSign:(BOOL)a6 size:(int64_t)a7
{
  v11 = a3;
  v12 = a4;
  v13 = +[UIDevice currentDevice];
  if ([v13 userInterfaceIdiom] == 1)
  {

    goto LABEL_4;
  }

  v14 = +[UIDevice currentDevice];
  v15 = [v14 userInterfaceIdiom];

  if (v15 == 5)
  {
LABEL_4:
    if (!(v11 | v12))
    {
      goto LABEL_24;
    }
  }

  self->_alignLeftIfNoManeuverSign = a6;
  v16 = [objc_opt_class() _labelListViewClassForRoute:v11 step:v12];
  v17 = objc_opt_class();
  labelListView = self->_labelListView;
  if (v16 == v17)
  {
    [(RouteStepLabelListView *)labelListView setRoute:v11 step:v12 tableMode:0];
  }

  else
  {
    [(RouteStepLabelListView *)labelListView removeFromSuperview];
    v19 = [[v16 alloc] initWithRoute:v11 step:v12 tableMode:0];
    v20 = self->_labelListView;
    self->_labelListView = v19;

    [(LabelListView *)self->_labelListView setTextAlignment:+[NSLocale currentTextAlignment]];
    [(DirectionsStepView *)self addSubview:self->_labelListView];
  }

  if (!self->_signView)
  {
    v70 = 0u;
    v21 = objc_opt_class();
    v22 = [(DirectionsStepView *)self traitCollection];
    v23 = [v22 userInterfaceIdiom];
    if (v21)
    {
      [v21 cellMetricsForIdiom:v23];
    }

    else
    {
      v70 = 0u;
    }

    v24 = [[SimpleSignView alloc] initWithFrame:0.0, 0.0, *(&v70 + 1), 0.0];
    signView = self->_signView;
    self->_signView = v24;

    v26 = [(DirectionsStepView *)self signView];
    [(DirectionsStepView *)self addSubview:v26];
  }

  [(MKMultiPartLabel *)self->_roadDescriptionLabel removeFromSuperview];
  v27 = [v12 geoStep];
  v28 = [v27 roadDescriptionsCount];

  if (v28)
  {
    if (self->_roadDescriptionLabel)
    {
      roadDescriptionLabel = [objc_opt_class() _multiPartAttributedStringForRoadDescriptionsInStep:v12];
      [(MKMultiPartLabel *)self->_roadDescriptionLabel setMultiPartString:roadDescriptionLabel];
    }

    else
    {
      [(DirectionsStepView *)self bounds];
      v31 = v30;
      [(NSLayoutConstraint *)self->_trailingGuideWidth constant];
      v33 = v32;
      [(RouteStepLabelListView *)self->_labelListView frame];
      v34 = v31 - (v33 + CGRectGetMinX(v72));
      v35 = [objc_opt_class() _roadDescriptionsLabelForStep:v12 width:v34];
      roadDescriptionLabel = self->_roadDescriptionLabel;
      self->_roadDescriptionLabel = v35;
    }

    [(DirectionsStepView *)self addSubview:self->_roadDescriptionLabel];
  }

  v36 = objc_alloc_init(UILayoutGuide);
  trailingViewGuide = self->_trailingViewGuide;
  self->_trailingViewGuide = v36;

  [(DirectionsStepView *)self addLayoutGuide:self->_trailingViewGuide];
  v38 = objc_opt_class();
  v39 = [(DirectionsStepView *)self traitCollection];
  v40 = [v39 userInterfaceIdiom];
  v68 = v12;
  v69 = v11;
  if (v38)
  {
    [v38 cellMetricsForIdiom:v40];
  }

  v41 = [(UILayoutGuide *)self->_trailingViewGuide widthAnchor];
  v42 = [v41 constraintEqualToConstant:0.0];
  trailingGuideWidth = self->_trailingGuideWidth;
  self->_trailingGuideWidth = v42;

  v44 = [(DirectionsStepView *)self trailingAnchor];
  v45 = [(UILayoutGuide *)self->_trailingViewGuide trailingAnchor];
  v46 = [v44 constraintEqualToAnchor:v45 constant:0.0];
  trailingGuideToContentViewConstraint = self->_trailingGuideToContentViewConstraint;
  self->_trailingGuideToContentViewConstraint = v46;

  v48 = objc_opt_new();
  v67 = [(UILayoutGuide *)self->_trailingViewGuide topAnchor];
  v49 = [(DirectionsStepView *)self topAnchor];
  v50 = [v67 constraintEqualToAnchor:v49];
  v71[0] = v50;
  v51 = [(UILayoutGuide *)self->_trailingViewGuide bottomAnchor];
  v52 = [(DirectionsStepView *)self bottomAnchor];
  v53 = [v51 constraintEqualToAnchor:v52];
  v54 = self->_trailingGuideToContentViewConstraint;
  v71[1] = v53;
  v71[2] = v54;
  v55 = v48;
  v71[3] = self->_trailingGuideWidth;
  v56 = [NSArray arrayWithObjects:v71 count:4];
  [v48 addObjectsFromArray:v56];

  [NSLayoutConstraint activateConstraints:v48];
  v12 = v68;
  v11 = v69;
  v57 = sub_100F5C4B8(v68, v69);
  v58 = v57;
  if (v57)
  {
    v59 = [v57 mapItemIfLoaded];
    v60 = [(DirectionsStepView *)self traitCollection];
    [v60 displayScale];
    v62 = +[MKMapItem _maps_markerImageForMapItem:scale:size:useMarkerFallback:](MKMapItem, "_maps_markerImageForMapItem:scale:size:useMarkerFallback:", v59, [objc_opt_class() signViewIconSize], 1, v61);

    [(DirectionsStepView *)self setAccessibilityIdentifier:@"DirectionsStepCell.Waypoint"];
  }

  else
  {
    v63 = [(DirectionsStepView *)self _shieldImageFromStep:v68 route:v69 shieldSize:v66];
    v64 = [v63 image];
    [v63 contentScale];
    v62 = [UIImage imageWithCGImage:v64 scale:0 orientation:v65];
    [(DirectionsStepView *)self setAccessibilityIdentifier:@"DirectionsStepCell.Maneuver"];
  }

  [(DirectionsStepView *)self _updateSignViewForStep:v68 maneuverImage:v62 route:v69];
  [(DirectionsStepView *)self setNeedsLayout];

LABEL_24:
}

- (void)layoutSubviews
{
  v86.receiver = self;
  v86.super_class = DirectionsStepView;
  [(DirectionsStepView *)&v86 layoutSubviews];
  v3 = [(SimpleSignView *)self->_signView maneuverView];
  v4 = [v3 maneuverArtwork];
  if ([v4 maneuver])
  {

LABEL_4:
    v6 = 0;
    v7 = 1;
    goto LABEL_5;
  }

  v5 = [(SimpleSignView *)self->_signView shieldImage];

  if (v5)
  {
    goto LABEL_4;
  }

  v7 = !self->_alignLeftIfNoManeuverSign;
  v6 = 1;
LABEL_5:
  v85 = 0;
  v83 = 0u;
  v84 = 0u;
  v81 = 0u;
  v82 = 0u;
  v8 = objc_opt_class();
  v9 = [(DirectionsStepView *)self traitCollection];
  v10 = [v9 userInterfaceIdiom];
  if (v8)
  {
    [v8 cellMetricsForIdiom:v10];
  }

  else
  {
    v85 = 0;
    v83 = 0u;
    v84 = 0u;
    v81 = 0u;
    v82 = 0u;
  }

  [(DirectionsStepView *)self bounds];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  [(NSLayoutConstraint *)self->_trailingGuideWidth constant];
  v20 = v16 - v19;
  v21 = objc_opt_class();
  v79[2] = v83;
  v79[3] = v84;
  v80 = v85;
  v79[0] = v81;
  v79[1] = v82;
  [v21 _textWidthForWidth:v7 withManeuver:v79 metrics:v20];
  v23 = v22;
  v90.origin.x = v12;
  v90.origin.y = v14;
  v90.size.width = v20;
  v90.size.height = v18;
  [(RouteStepLabelListView *)self->_labelListView layoutToFitSize:v23, CGRectGetHeight(v90)];
  [(RouteStepLabelListView *)self->_labelListView frame];
  v25 = v24;
  v27 = v26;
  v29 = v28;
  if (v7)
  {
    v30 = *(&v84 + 1) + *&v83 + *&v84;
  }

  else
  {
    v30 = *&v83;
  }

  [(MKMultiPartLabel *)self->_roadDescriptionLabel frame];
  v31 = [(MKMultiPartLabel *)self->_roadDescriptionLabel superview];
  if (v31)
  {
    [(MKMultiPartLabel *)self->_roadDescriptionLabel sizeThatFits:v23, 1.79769313e308];
    v33 = v32;
  }

  else
  {
    v33 = 0.0;
  }

  [(DirectionsStepView *)self bounds];
  v70 = v34;
  v72 = v35;
  v68 = *&v83;
  v69 = v36;
  v37 = v84;
  v67 = *(&v84 + 1);
  [(SimpleSignView *)self->_signView setHidden:v6];
  v91.origin.x = v30;
  v91.origin.y = v25;
  v91.size.width = v27;
  v91.size.height = v29;
  Height = CGRectGetHeight(v91);
  v92.origin.y = 0.0;
  v92.origin.x = v30;
  v92.size.width = v23;
  v92.size.height = v33;
  if (CGRectGetHeight(v92) > 0.00000011920929)
  {
    v93.origin.x = v30;
    v93.origin.y = v25;
    v93.size.width = v27;
    v93.size.height = v29;
    if (CGRectGetHeight(v93) <= 0.00000011920929)
    {
      v39 = Height;
    }

    else
    {
      v39 = Height + 4.0;
    }

    v94.origin.y = 0.0;
    v94.origin.x = v30;
    v94.size.width = v23;
    v94.size.height = v33;
    Height = v39 + CGRectGetHeight(v94);
  }

  v73 = v33;
  v74 = v23;
  [(DirectionsStepView *)self bounds];
  v40 = v29;
  v41 = (CGRectGetHeight(v95) - Height) * 0.5;
  v96.origin.x = v30;
  v96.origin.y = v41;
  v96.size.width = v27;
  v96.size.height = v29;
  v66 = CGRectGetMaxY(v96) + 4.0;
  [(SimpleSignView *)self->_signView frame];
  v42 = v27;
  v44 = v43;
  v46 = v45;
  v71 = round(v70 + (*&v37 + v68 + v67 - v43) * 0.5);
  v47 = round(v72 + (v69 - v45) * 0.5);
  if (sub_10000FA08(self) == 5)
  {
    v97.origin.x = v30;
    v97.origin.y = v41;
    v48 = v42;
    v97.size.width = v42;
    v97.size.height = v40;
    v49 = CGRectGetHeight(v97);
    [(SimpleSignView *)self->_signView frame];
    if (v49 > CGRectGetHeight(v98))
    {
      v47 = 10.0;
    }
  }

  else
  {
    v48 = v42;
  }

  [(SimpleSignView *)self->_signView setFrame:v71, v47, v44, v46];
  [(RouteStepLabelListView *)self->_labelListView setFrame:v30, v41, v48, v40];
  [(MKMultiPartLabel *)self->_roadDescriptionLabel setFrame:v30, v66, v74, v73];
  [(MKMultiPartLabel *)self->_roadDescriptionLabel setBounds:0.0, 0.0, v74, v73];
  v50 = +[UIApplication sharedApplication];
  v51 = [v50 userInterfaceLayoutDirection];

  if (v51 == 1)
  {
    roadDescriptionLabel = self->_roadDescriptionLabel;
    if (roadDescriptionLabel)
    {
      v89[0] = self->_labelListView;
      v89[1] = roadDescriptionLabel;
      v89[2] = self->_signView;
      v53 = v89;
      v54 = 3;
    }

    else
    {
      signView = self->_signView;
      v88[0] = self->_labelListView;
      v88[1] = signView;
      v53 = v88;
      v54 = 2;
    }

    v56 = [NSArray arrayWithObjects:v53 count:v54];
    [(DirectionsStepView *)self bounds];
    MaxX = CGRectGetMaxX(v99);
    v75 = 0u;
    v76 = 0u;
    v77 = 0u;
    v78 = 0u;
    v58 = v56;
    v59 = [v58 countByEnumeratingWithState:&v75 objects:v87 count:16];
    if (v59)
    {
      v60 = v59;
      v61 = *v76;
      do
      {
        for (i = 0; i != v60; i = i + 1)
        {
          if (*v76 != v61)
          {
            objc_enumerationMutation(v58);
          }

          v63 = *(*(&v75 + 1) + 8 * i);
          [v63 frame];
          [v63 setFrame:MaxX - (v64 + v65)];
        }

        v60 = [v58 countByEnumeratingWithState:&v75 objects:v87 count:16];
      }

      while (v60);
    }
  }
}

+ (id)_multiPartAttributedStringForRoadDescriptionsInStep:(id)a3
{
  v4 = a3;
  if (qword_10195CDC0 != -1)
  {
    dispatch_once(&qword_10195CDC0, &stru_101624D78);
  }

  v5 = [NSMutableArray alloc];
  v6 = [v4 geoStep];
  v7 = [v5 initWithCapacity:{objc_msgSend(v6, "roadDescriptionsCount")}];

  v8 = [v4 geoStep];
  v9 = [v8 roadDescriptions];

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = v9;
  v10 = [obj countByEnumeratingWithState:&v23 objects:v29 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v24;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v24 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v23 + 1) + 8 * i);
        v15 = [v14 formattedDescription];
        v27 = NSForegroundColorAttributeName;
        v16 = [v14 accentColor];
        v17 = v16;
        if (!v16)
        {
          v3 = +[UIColor labelColor];
          v17 = v3;
        }

        v28 = v17;
        v18 = [NSDictionary dictionaryWithObjects:&v28 forKeys:&v27 count:1];
        v19 = [NSAttributedString _mapkit_attributedTransitStringForServerFormattedString:v15 defaultAttributes:v18];

        if (!v16)
        {
        }

        [v7 addObject:v19];
      }

      v11 = [obj countByEnumeratingWithState:&v23 objects:v29 count:16];
    }

    while (v11);
  }

  v20 = [MKMultiPartAttributedString multiPartAttributedStringWithComponents:v7 repeatedSeparator:qword_10195CDC8];

  return v20;
}

+ (id)_roadDescriptionsLabelForStep:(id)a3 width:(double)a4
{
  v6 = a3;
  v7 = [[MKMultiPartLabel alloc] initWithFrame:{0.0, 0.0, a4, 0.0}];
  [v7 setNumberOfLines:0];
  [v7 setTextInset:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
  v8 = [objc_msgSend(a1 _labelListViewClassForRoute:0 step:{v6), "fontsForStrings:route:step:tableMode:", &off_1016EC860, 0, v6, 0}];
  v9 = [v8 lastObject];
  [v7 setFont:v9];

  v10 = [a1 _multiPartAttributedStringForRoadDescriptionsInStep:v6];

  [v7 setMultiPartString:v10];

  return v7;
}

+ (double)heightForWidth:(double)a3 route:(id)a4 step:(id)a5 idiom:(int64_t)a6
{
  v10 = a5;
  v11 = a4;
  v12 = [v10 geoStep];
  v13 = [v12 maneuverType] != 0;

  v14 = [a1 _labelListViewClassForRoute:v11 step:v10];
  v28 = 0;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  [a1 cellMetricsForIdiom:a6];
  v22[2] = v26;
  v22[3] = v27;
  v23 = v28;
  v22[0] = v24;
  v22[1] = v25;
  [a1 _textWidthForWidth:v13 withManeuver:v22 metrics:a3];
  v16 = v15;
  [v14 heightForWidth:v11 route:v10 step:a6 idiom:?];
  v18 = v17;

  [a1 _heightForRoadDescriptionViewWithStep:v10 forWidth:v16];
  v20 = v19;

  return fmax(v20 + v18 + *&v24 + *(&v24 + 1), *(&v25 + 1));
}

+ (double)_textWidthForWidth:(double)a3 withManeuver:(BOOL)a4 metrics:(id *)a5
{
  result = a3 - (a5->var4 + a5->var5);
  if (a4)
  {
    return result - (a5->var6 + a5->var7);
  }

  return result;
}

+ (double)_heightForRoadDescriptionViewWithStep:(id)a3 forWidth:(double)a4
{
  v5 = a3;
  v6 = [v5 geoStep];
  v7 = [v6 roadDescriptions];
  v8 = [v7 count];

  if (v8)
  {
    v9 = [objc_opt_class() _roadDescriptionsLabelForStep:v5 width:a4];
    [v9 sizeThatFits:{a4, 1.79769313e308}];
    v11 = v10;
  }

  else
  {
    v11 = 0.0;
  }

  return v11;
}

+ ($8452678F12DBC466148836A9D382CAFC)cellMetricsForIdiom:(SEL)a3
{
  if (a4 == 5)
  {
    _Q1 = xmmword_101212830;
    v5 = 22.0;
    v6 = 5.0;
    v7 = 40.0;
  }

  else
  {
    __asm { FMOV            V1.2D, #15.0 }

    v5 = 30.0;
    v6 = 15.0;
    v7 = 60.0;
  }

  retstr->var0 = v6;
  retstr->var1 = v6;
  retstr->var2 = 17.0;
  retstr->var3 = v7;
  *&retstr->var4 = _Q1;
  *&retstr->var5 = _Q1;
  retstr->var7 = v5;
  retstr->var8 = v5;
  return result;
}

@end