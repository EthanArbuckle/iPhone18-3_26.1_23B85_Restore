@interface DirectionsStartEndContentView
+ ($8452678F12DBC466148836A9D382CAFC)cellMetricsForIdiom:(SEL)idiom;
+ (id)_overviewTitleForWaypoint:(id)waypoint route:(id)route;
+ (id)_subtitleForWaypoint:(id)waypoint route:(id)route selectedVehicle:(id)vehicle displayedInRoutePlanning:(BOOL)planning;
+ (id)overviewFontProvider;
+ (id)subtitleFontProvider;
- (DirectionsStartEndContentView)initWithFrame:(CGRect)frame;
- (double)_bottomPaddingUsingFont:(id)font metrics:(id *)metrics;
- (double)_dimAlpha;
- (double)_heightForAttributedText:(id)text width:(double)width;
- (double)_heightForText:(id)text width:(double)width fontProvider:(id)provider;
- (double)_topPaddingUsingFont:(id)font metrics:(id *)metrics;
- (double)heightForWaypoint:(id)waypoint route:(id)route selectedVehicle:(id)vehicle displayedInRoutePlanning:(BOOL)planning width:(double)width;
- (id)_labelColor;
- (void)_setPinImageForWaypoint:(id)waypoint;
- (void)_updateStyleValuesFromTheme;
- (void)configureForWaypoint:(id)waypoint route:(id)route selectedVehicle:(id)vehicle displayedInRoutePlanning:(BOOL)planning;
- (void)layoutSubviews;
- (void)setIsDimmedStep:(BOOL)step;
@end

@implementation DirectionsStartEndContentView

- (void)_setPinImageForWaypoint:(id)waypoint
{
  waypointCopy = waypoint;
  responseSearch = [waypointCopy responseSearch];
  if (responseSearch)
  {
    v6 = responseSearch;
    responseSearch2 = [waypointCopy responseSearch];
    place = [responseSearch2 place];

    if (place)
    {
      [(UIImageView *)self->_pinView setImage:0];
      identifier = self->_identifier;
      window = [(DirectionsStartEndContentView *)self window];
      screen = [window screen];
      if (screen)
      {
        window2 = [(DirectionsStartEndContentView *)self window];
        screen2 = [window2 screen];
        [screen2 scale];
        v15 = v14;
      }

      else
      {
        window2 = +[MKSystemController sharedInstance];
        [window2 screenScale];
        v15 = v16;
      }

      v17 = dispatch_get_global_queue(0, 0);
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_100668EF4;
      v18[3] = &unk_10164C698;
      v21 = v15;
      v19 = waypointCopy;
      selfCopy = self;
      v22 = identifier;
      dispatch_async(v17, v18);
    }
  }
}

- (id)_labelColor
{
  v3 = +[UIColor labelColor];
  if (self->_isDimmedStep)
  {
    [(DirectionsStartEndContentView *)self _dimAlpha];
    v4 = [v3 colorWithAlphaComponent:?];

    v3 = v4;
  }

  return v3;
}

- (double)_dimAlpha
{
  traitCollection = [(DirectionsStartEndContentView *)self traitCollection];
  v3 = dbl_101212820[[traitCollection userInterfaceStyle] == 2];

  return v3;
}

- (void)_updateStyleValuesFromTheme
{
  _labelColor = [(DirectionsStartEndContentView *)self _labelColor];
  [(UILabel *)self->_overviewLabel setTextColor:_labelColor];

  v4 = 1.0;
  if (self->_isDimmedStep)
  {
    [(DirectionsStartEndContentView *)self _dimAlpha];
  }

  pinView = self->_pinView;

  [(UIImageView *)pinView setAlpha:v4];
}

- (void)setIsDimmedStep:(BOOL)step
{
  if (self->_isDimmedStep != step)
  {
    self->_isDimmedStep = step;
    [(DirectionsStartEndContentView *)self _updateStyleValuesFromTheme];
  }
}

- (void)layoutSubviews
{
  v50.receiver = self;
  v50.super_class = DirectionsStartEndContentView;
  [(DirectionsStartEndContentView *)&v50 layoutSubviews];
  v49 = 0;
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v3 = objc_opt_class();
  traitCollection = [(DirectionsStartEndContentView *)self traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];
  if (v3)
  {
    [v3 cellMetricsForIdiom:userInterfaceIdiom];
  }

  else
  {
    v49 = 0;
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
  }

  [(DirectionsStartEndContentView *)self bounds];
  y = v53.origin.y;
  v53.origin.x = *&v48 + *&v47 + v7 + *(&v48 + 1);
  x = v53.origin.x;
  v9 = v53.size.width - (CGRectGetMinX(v53) + *(&v47 + 1));
  text = [(UILabel *)self->_overviewLabel text];
  overviewFontProvider = [objc_opt_class() overviewFontProvider];
  [(DirectionsStartEndContentView *)self _heightForText:text width:overviewFontProvider fontProvider:v9];
  v13 = v12;

  attributedText = [(UILabel *)self->_subtitleLabel attributedText];
  [(DirectionsStartEndContentView *)self _heightForAttributedText:attributedText width:v9];
  v16 = v15;

  v54.origin.x = x;
  v54.origin.y = y;
  v54.size.width = v9;
  v54.size.height = v13;
  MinX = CGRectGetMinX(v54);
  v55.origin.x = x;
  v55.origin.y = y;
  v55.size.width = v9;
  v55.size.height = v13;
  Width = CGRectGetWidth(v55);
  v19 = 0.0;
  v56.origin.y = 0.0;
  v56.origin.x = MinX;
  v56.size.width = Width;
  v56.size.height = v16;
  if (CGRectGetHeight(v56) > 0.0)
  {
    [objc_opt_class() labelSpacing];
    v19 = v20;
  }

  v57.origin.x = x;
  v57.origin.y = y;
  v57.size.width = v9;
  v57.size.height = v13;
  Height = CGRectGetHeight(v57);
  v58.origin.y = 0.0;
  v58.origin.x = MinX;
  v58.size.width = Width;
  v58.size.height = v16;
  v40 = v16;
  v22 = CGRectGetHeight(v58);
  [(DirectionsStartEndContentView *)self bounds];
  v23 = (CGRectGetHeight(v59) - (v22 + v19 + Height)) * 0.5;
  v60.origin.x = x;
  v60.origin.y = v23;
  v60.size.width = v9;
  v60.size.height = v13;
  MaxY = CGRectGetMaxY(v60);
  [objc_opt_class() labelSpacing];
  v26 = v25 + MaxY;
  [(UILabel *)self->_overviewLabel setFrame:x, v23, v9, v13];
  [(UILabel *)self->_subtitleLabel setFrame:MinX, v26, Width, v40];
  [(DirectionsStartEndContentView *)self _updateStyleValuesFromTheme];
  [(DirectionsStartEndContentView *)self bounds];
  [(UIImageView *)self->_pinView setFrame:?];
  v27 = +[UIApplication sharedApplication];
  userInterfaceLayoutDirection = [v27 userInterfaceLayoutDirection];

  if (userInterfaceLayoutDirection == 1)
  {
    subtitleLabel = self->_subtitleLabel;
    v52[0] = self->_overviewLabel;
    v52[1] = subtitleLabel;
    v52[2] = self->_pinView;
    v30 = [NSArray arrayWithObjects:v52 count:3];
    [(DirectionsStartEndContentView *)self bounds];
    MaxX = CGRectGetMaxX(v61);
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v32 = v30;
    v33 = [v32 countByEnumeratingWithState:&v41 objects:v51 count:16];
    if (v33)
    {
      v34 = v33;
      v35 = *v42;
      do
      {
        for (i = 0; i != v34; i = i + 1)
        {
          if (*v42 != v35)
          {
            objc_enumerationMutation(v32);
          }

          v37 = *(*(&v41 + 1) + 8 * i);
          [v37 frame];
          [v37 setFrame:MaxX - (v38 + v39)];
        }

        v34 = [v32 countByEnumeratingWithState:&v41 objects:v51 count:16];
      }

      while (v34);
    }
  }
}

- (DirectionsStartEndContentView)initWithFrame:(CGRect)frame
{
  v20.receiver = self;
  v20.super_class = DirectionsStartEndContentView;
  v3 = [(DirectionsStartEndContentView *)&v20 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(DirectionsStartEndContentView *)v3 setAccessibilityIdentifier:@"DirectionsStartEndContent"];
    v5 = objc_alloc_init(UILabel);
    overviewLabel = v4->_overviewLabel;
    v4->_overviewLabel = v5;

    v7 = v4->_overviewLabel;
    overviewFontProvider = [objc_opt_class() overviewFontProvider];
    [DynamicTypeWizard autorefreshLabel:v7 withFontProvider:overviewFontProvider];

    v9 = +[UIColor labelColor];
    [(UILabel *)v4->_overviewLabel setTextColor:v9];

    [(UILabel *)v4->_overviewLabel setTextAlignment:+[NSLocale currentTextAlignment]];
    [(UILabel *)v4->_overviewLabel setBackgroundColor:0];
    [(UILabel *)v4->_overviewLabel setNumberOfLines:0];
    [(UILabel *)v4->_overviewLabel setLineBreakMode:0];
    [(UILabel *)v4->_overviewLabel setOpaque:0];
    [(UILabel *)v4->_overviewLabel setAccessibilityIdentifier:@"OverviewLabel"];
    [(DirectionsStartEndContentView *)v4 addSubview:v4->_overviewLabel];
    v10 = objc_alloc_init(UILabel);
    subtitleLabel = v4->_subtitleLabel;
    v4->_subtitleLabel = v10;

    [(UILabel *)v4->_subtitleLabel setNumberOfLines:0];
    v12 = v4->_subtitleLabel;
    subtitleFontProvider = [objc_opt_class() subtitleFontProvider];
    [DynamicTypeWizard autorefreshLabel:v12 withFontProvider:subtitleFontProvider];

    v14 = +[UIColor secondaryLabelColor];
    [(UILabel *)v4->_subtitleLabel setTextColor:v14];

    [(UILabel *)v4->_subtitleLabel setAccessibilityIdentifier:@"SubtitleLabel"];
    [(DirectionsStartEndContentView *)v4 addSubview:v4->_subtitleLabel];
    if (sub_10000FA08(v4) == 5)
    {
      v15 = +[UIColor systemWhiteColor];
      [(UILabel *)v4->_overviewLabel setHighlightedTextColor:v15];

      v16 = +[UIColor systemWhiteColor];
      [(UILabel *)v4->_subtitleLabel setHighlightedTextColor:v16];
    }

    v17 = [[UIImageView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    pinView = v4->_pinView;
    v4->_pinView = v17;

    [(UIImageView *)v4->_pinView setContentMode:4];
    [(UIImageView *)v4->_pinView setAccessibilityIdentifier:@"PinView"];
    [(DirectionsStartEndContentView *)v4 addSubview:v4->_pinView];
    v4->_identifier = 0;
  }

  return v4;
}

- (double)_heightForText:(id)text width:(double)width fontProvider:(id)provider
{
  v7 = *(provider + 2);
  textCopy = text;
  v9 = v7(provider);
  v22 = NSFontAttributeName;
  v23 = v9;
  v10 = [NSDictionary dictionaryWithObjects:&v23 forKeys:&v22 count:1];
  [textCopy boundingRectWithSize:3 options:v10 attributes:0 context:{width, 2000.0}];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  v24.origin.x = v12;
  v24.origin.y = v14;
  v24.size.width = v16;
  v24.size.height = v18;
  CGRectGetHeight(v24);
  UIFloorToViewScale();
  v20 = v19;

  return v20;
}

- (double)_heightForAttributedText:(id)text width:(double)width
{
  [text boundingRectWithSize:3 options:0 context:{width, 2000.0}];
  CGRectGetHeight(v6);

  UIFloorToViewScale();
  return result;
}

- (double)heightForWaypoint:(id)waypoint route:(id)route selectedVehicle:(id)vehicle displayedInRoutePlanning:(BOOL)planning width:(double)width
{
  planningCopy = planning;
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  vehicleCopy = vehicle;
  routeCopy = route;
  waypointCopy = waypoint;
  v15 = objc_opt_class();
  traitCollection = [(DirectionsStartEndContentView *)self traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];
  if (v15)
  {
    [v15 cellMetricsForIdiom:userInterfaceIdiom];
  }

  else
  {
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
  }

  overviewFontProvider = [objc_opt_class() overviewFontProvider];
  v19 = overviewFontProvider[2]();
  *v47 = v44;
  *&v47[16] = v45;
  widthCopy = 0.0;
  *buf = v42;
  *&buf[16] = v43;
  [(DirectionsStartEndContentView *)self _topPaddingUsingFont:v19 metrics:buf];
  v21 = v20;

  UIFloorToViewScale();
  v23 = v22;
  v24 = [objc_opt_class() _overviewTitleForWaypoint:waypointCopy route:routeCopy];
  overviewFontProvider2 = [objc_opt_class() overviewFontProvider];
  [(DirectionsStartEndContentView *)self _heightForText:v24 width:overviewFontProvider2 fontProvider:v23];
  v27 = v26;

  v28 = v27 + v21;
  v29 = [objc_opt_class() _subtitleForWaypoint:waypointCopy route:routeCopy selectedVehicle:vehicleCopy displayedInRoutePlanning:planningCopy];

  if (v29)
  {
    [objc_opt_class() labelSpacing];
    v31 = v30;
    [(DirectionsStartEndContentView *)self _heightForAttributedText:v29 width:v23];
    v28 = v31 + v32 + v28;
  }

  subtitleFontProvider = [objc_opt_class() subtitleFontProvider];
  v34 = subtitleFontProvider[2]();
  *v47 = v44;
  *&v47[16] = v45;
  widthCopy = 0.0;
  *buf = v42;
  *&buf[16] = v43;
  [(DirectionsStartEndContentView *)self _bottomPaddingUsingFont:v34 metrics:buf];
  v36 = v35;

  if (v36 + v28 >= 0.0)
  {
    UIFloorToViewScale();
    v39 = v40;
  }

  else
  {
    v37 = sub_100035E6C();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_FAULT))
    {
      [(DirectionsStartEndContentView *)self bounds];
      v38 = NSStringFromCGRect(v51);
      *buf = 134219778;
      *&buf[4] = v21;
      *&buf[12] = 2048;
      *&buf[14] = v27;
      *&buf[22] = 2112;
      *&buf[24] = v24;
      *v47 = 2112;
      *&v47[2] = v29;
      *&v47[10] = 2048;
      *&v47[12] = v36;
      *&v47[20] = 2048;
      *&v47[22] = v36 + v28;
      *&v47[30] = 2048;
      widthCopy = width;
      v49 = 2112;
      v50 = v38;
      _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_FAULT, "Invalid height for start/end, topPadding: %f textHeight: %f topText: %@ bottomText: %@ bottomPadding: %f totalHeight: %f width: %f bounds: %@", buf, 0x52u);
    }

    v39 = 0.0;
  }

  return v39;
}

- (void)configureForWaypoint:(id)waypoint route:(id)route selectedVehicle:(id)vehicle displayedInRoutePlanning:(BOOL)planning
{
  planningCopy = planning;
  vehicleCopy = vehicle;
  routeCopy = route;
  waypointCopy = waypoint;
  v13 = [objc_opt_class() _overviewTitleForWaypoint:waypointCopy route:routeCopy];
  [(UILabel *)self->_overviewLabel setText:v13];

  v15 = [objc_opt_class() _subtitleForWaypoint:waypointCopy route:routeCopy selectedVehicle:vehicleCopy displayedInRoutePlanning:planningCopy];

  attributedText = [(UILabel *)self->_subtitleLabel attributedText];
  LOBYTE(v13) = [attributedText isEqualToAttributedString:v15];

  [(UILabel *)self->_subtitleLabel setAttributedText:v15];
  [(DirectionsStartEndContentView *)self _setPinImageForWaypoint:waypointCopy];

  if ((v13 & 1) == 0)
  {
    [(DirectionsStartEndContentView *)self setNeedsLayout];
  }
}

- (double)_bottomPaddingUsingFont:(id)font metrics:(id *)metrics
{
  fontCopy = font;
  v7 = sub_10000FA08(self);
  var1 = metrics->var1;
  if (v7 != 5)
  {
    [fontCopy descender];
    var1 = var1 - v9;
  }

  return var1;
}

- (double)_topPaddingUsingFont:(id)font metrics:(id *)metrics
{
  fontCopy = font;
  v7 = sub_10000FA08(self);
  var0 = metrics->var0;
  if (v7 != 5)
  {
    [fontCopy ascender];
    var0 = var0 - v9;
  }

  return var0;
}

+ (id)_subtitleForWaypoint:(id)waypoint route:(id)route selectedVehicle:(id)vehicle displayedInRoutePlanning:(BOOL)planning
{
  waypointCopy = waypoint;
  routeCopy = route;
  if ([routeCopy _isChargingWaypoint:waypointCopy])
  {
    if (vehicle)
    {
      v10 = [routeCopy _isStartWaypoint:waypointCopy];
      steps = [routeCopy steps];
      v12 = steps;
      if (v10)
      {
        firstObject = [steps firstObject];
        v14 = 0;
      }

      else
      {
        firstObject = [steps lastObject];
        v14 = 2;
      }

      subtitleFontProvider = [objc_opt_class() subtitleFontProvider];
      v23 = subtitleFontProvider[2]();
      v20 = [firstObject attributedChargeStringForWaypointType:v14 font:v23 textColor:0 includeDaysAgo:v10];
    }

    else
    {
      v21 = sub_100798A3C();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        *v25 = 0;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "Failed to generate a proper subtitle for Directions cell. Waypoint was a charge stop, but there was no selected vehicle.", v25, 2u);
      }

      v20 = 0;
    }
  }

  else
  {
    singleLineAddress = [waypointCopy singleLineAddress];
    if (singleLineAddress)
    {
      v16 = [NSAttributedString alloc];
      v26 = NSFontAttributeName;
      subtitleFontProvider2 = [objc_opt_class() subtitleFontProvider];
      v18 = subtitleFontProvider2[2]();
      v27 = v18;
      v19 = [NSDictionary dictionaryWithObjects:&v27 forKeys:&v26 count:1];
      v20 = [v16 initWithString:singleLineAddress attributes:v19];
    }

    else
    {
      v20 = 0;
    }
  }

  return v20;
}

+ (id)_overviewTitleForWaypoint:(id)waypoint route:(id)route
{
  waypointCopy = waypoint;
  routeCopy = route;
  v7 = [routeCopy _isStartWaypoint:waypointCopy];
  legs = [routeCopy legs];

  if (!v7)
  {
    lastObject = [legs lastObject];
    destinationListInstructionString = [lastObject destinationListInstructionString];

    if ([destinationListInstructionString length])
    {
      goto LABEL_10;
    }

    v13 = +[NSBundle mainBundle];
    v14 = v13;
    v15 = @"Arrive [Directions Step]";
    goto LABEL_8;
  }

  firstObject = [legs firstObject];
  destinationListInstructionString = [firstObject originListInstructionString];

  if ([destinationListInstructionString length])
  {
    goto LABEL_10;
  }

  if (![waypointCopy isDynamicCurrentLocation])
  {
    v13 = +[NSBundle mainBundle];
    v14 = v13;
    v15 = @"Start [Directions Step]";
LABEL_8:
    v11 = [v13 localizedStringForKey:v15 value:@"localized string not found" table:0];

    destinationListInstructionString = v14;
    goto LABEL_9;
  }

  v11 = MKLocalizedStringForCurrentLocation();
LABEL_9:

  destinationListInstructionString = v11;
LABEL_10:

  return destinationListInstructionString;
}

+ (id)subtitleFontProvider
{
  v2 = +[UIDevice currentDevice];
  userInterfaceIdiom = [v2 userInterfaceIdiom];

  if (userInterfaceIdiom == 5)
  {
    v4 = &stru_10165D8C8;
  }

  else
  {
    v4 = &stru_10165D908;
  }

  v5 = objc_retainBlock(v4);

  return v5;
}

+ (id)overviewFontProvider
{
  v2 = +[UIDevice currentDevice];
  userInterfaceIdiom = [v2 userInterfaceIdiom];

  if (userInterfaceIdiom == 5)
  {
    v4 = &stru_10165D8C8;
  }

  else
  {
    v4 = &stru_10165DAC8;
  }

  v5 = objc_retainBlock(v4);

  return v5;
}

+ ($8452678F12DBC466148836A9D382CAFC)cellMetricsForIdiom:(SEL)idiom
{
  retstr->var8 = 0.0;
  *&retstr->var4 = 0u;
  *&retstr->var6 = 0u;
  *&retstr->var0 = 0u;
  *&retstr->var2 = 0u;
  result = [DirectionsStepTableViewCell cellMetricsForIdiom:?];
  if (a4 != 5)
  {
    *&retstr->var0 = xmmword_101212840;
  }

  return result;
}

@end