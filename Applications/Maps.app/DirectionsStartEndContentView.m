@interface DirectionsStartEndContentView
+ ($8452678F12DBC466148836A9D382CAFC)cellMetricsForIdiom:(SEL)a3;
+ (id)_overviewTitleForWaypoint:(id)a3 route:(id)a4;
+ (id)_subtitleForWaypoint:(id)a3 route:(id)a4 selectedVehicle:(id)a5 displayedInRoutePlanning:(BOOL)a6;
+ (id)overviewFontProvider;
+ (id)subtitleFontProvider;
- (DirectionsStartEndContentView)initWithFrame:(CGRect)a3;
- (double)_bottomPaddingUsingFont:(id)a3 metrics:(id *)a4;
- (double)_dimAlpha;
- (double)_heightForAttributedText:(id)a3 width:(double)a4;
- (double)_heightForText:(id)a3 width:(double)a4 fontProvider:(id)a5;
- (double)_topPaddingUsingFont:(id)a3 metrics:(id *)a4;
- (double)heightForWaypoint:(id)a3 route:(id)a4 selectedVehicle:(id)a5 displayedInRoutePlanning:(BOOL)a6 width:(double)a7;
- (id)_labelColor;
- (void)_setPinImageForWaypoint:(id)a3;
- (void)_updateStyleValuesFromTheme;
- (void)configureForWaypoint:(id)a3 route:(id)a4 selectedVehicle:(id)a5 displayedInRoutePlanning:(BOOL)a6;
- (void)layoutSubviews;
- (void)setIsDimmedStep:(BOOL)a3;
@end

@implementation DirectionsStartEndContentView

- (void)_setPinImageForWaypoint:(id)a3
{
  v4 = a3;
  v5 = [v4 responseSearch];
  if (v5)
  {
    v6 = v5;
    v7 = [v4 responseSearch];
    v8 = [v7 place];

    if (v8)
    {
      [(UIImageView *)self->_pinView setImage:0];
      identifier = self->_identifier;
      v10 = [(DirectionsStartEndContentView *)self window];
      v11 = [v10 screen];
      if (v11)
      {
        v12 = [(DirectionsStartEndContentView *)self window];
        v13 = [v12 screen];
        [v13 scale];
        v15 = v14;
      }

      else
      {
        v12 = +[MKSystemController sharedInstance];
        [v12 screenScale];
        v15 = v16;
      }

      v17 = dispatch_get_global_queue(0, 0);
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_100668EF4;
      v18[3] = &unk_10164C698;
      v21 = v15;
      v19 = v4;
      v20 = self;
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
  v2 = [(DirectionsStartEndContentView *)self traitCollection];
  v3 = dbl_101212820[[v2 userInterfaceStyle] == 2];

  return v3;
}

- (void)_updateStyleValuesFromTheme
{
  v3 = [(DirectionsStartEndContentView *)self _labelColor];
  [(UILabel *)self->_overviewLabel setTextColor:v3];

  v4 = 1.0;
  if (self->_isDimmedStep)
  {
    [(DirectionsStartEndContentView *)self _dimAlpha];
  }

  pinView = self->_pinView;

  [(UIImageView *)pinView setAlpha:v4];
}

- (void)setIsDimmedStep:(BOOL)a3
{
  if (self->_isDimmedStep != a3)
  {
    self->_isDimmedStep = a3;
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
  v4 = [(DirectionsStartEndContentView *)self traitCollection];
  v5 = [v4 userInterfaceIdiom];
  if (v3)
  {
    [v3 cellMetricsForIdiom:v5];
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
  v10 = [(UILabel *)self->_overviewLabel text];
  v11 = [objc_opt_class() overviewFontProvider];
  [(DirectionsStartEndContentView *)self _heightForText:v10 width:v11 fontProvider:v9];
  v13 = v12;

  v14 = [(UILabel *)self->_subtitleLabel attributedText];
  [(DirectionsStartEndContentView *)self _heightForAttributedText:v14 width:v9];
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
  v28 = [v27 userInterfaceLayoutDirection];

  if (v28 == 1)
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

- (DirectionsStartEndContentView)initWithFrame:(CGRect)a3
{
  v20.receiver = self;
  v20.super_class = DirectionsStartEndContentView;
  v3 = [(DirectionsStartEndContentView *)&v20 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(DirectionsStartEndContentView *)v3 setAccessibilityIdentifier:@"DirectionsStartEndContent"];
    v5 = objc_alloc_init(UILabel);
    overviewLabel = v4->_overviewLabel;
    v4->_overviewLabel = v5;

    v7 = v4->_overviewLabel;
    v8 = [objc_opt_class() overviewFontProvider];
    [DynamicTypeWizard autorefreshLabel:v7 withFontProvider:v8];

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
    v13 = [objc_opt_class() subtitleFontProvider];
    [DynamicTypeWizard autorefreshLabel:v12 withFontProvider:v13];

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

- (double)_heightForText:(id)a3 width:(double)a4 fontProvider:(id)a5
{
  v7 = *(a5 + 2);
  v8 = a3;
  v9 = v7(a5);
  v22 = NSFontAttributeName;
  v23 = v9;
  v10 = [NSDictionary dictionaryWithObjects:&v23 forKeys:&v22 count:1];
  [v8 boundingRectWithSize:3 options:v10 attributes:0 context:{a4, 2000.0}];
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

- (double)_heightForAttributedText:(id)a3 width:(double)a4
{
  [a3 boundingRectWithSize:3 options:0 context:{a4, 2000.0}];
  CGRectGetHeight(v6);

  UIFloorToViewScale();
  return result;
}

- (double)heightForWaypoint:(id)a3 route:(id)a4 selectedVehicle:(id)a5 displayedInRoutePlanning:(BOOL)a6 width:(double)a7
{
  v8 = a6;
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v12 = a5;
  v13 = a4;
  v14 = a3;
  v15 = objc_opt_class();
  v16 = [(DirectionsStartEndContentView *)self traitCollection];
  v17 = [v16 userInterfaceIdiom];
  if (v15)
  {
    [v15 cellMetricsForIdiom:v17];
  }

  else
  {
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
  }

  v18 = [objc_opt_class() overviewFontProvider];
  v19 = v18[2]();
  *v47 = v44;
  *&v47[16] = v45;
  v48 = 0.0;
  *buf = v42;
  *&buf[16] = v43;
  [(DirectionsStartEndContentView *)self _topPaddingUsingFont:v19 metrics:buf];
  v21 = v20;

  UIFloorToViewScale();
  v23 = v22;
  v24 = [objc_opt_class() _overviewTitleForWaypoint:v14 route:v13];
  v25 = [objc_opt_class() overviewFontProvider];
  [(DirectionsStartEndContentView *)self _heightForText:v24 width:v25 fontProvider:v23];
  v27 = v26;

  v28 = v27 + v21;
  v29 = [objc_opt_class() _subtitleForWaypoint:v14 route:v13 selectedVehicle:v12 displayedInRoutePlanning:v8];

  if (v29)
  {
    [objc_opt_class() labelSpacing];
    v31 = v30;
    [(DirectionsStartEndContentView *)self _heightForAttributedText:v29 width:v23];
    v28 = v31 + v32 + v28;
  }

  v33 = [objc_opt_class() subtitleFontProvider];
  v34 = v33[2]();
  *v47 = v44;
  *&v47[16] = v45;
  v48 = 0.0;
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
      v48 = a7;
      v49 = 2112;
      v50 = v38;
      _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_FAULT, "Invalid height for start/end, topPadding: %f textHeight: %f topText: %@ bottomText: %@ bottomPadding: %f totalHeight: %f width: %f bounds: %@", buf, 0x52u);
    }

    v39 = 0.0;
  }

  return v39;
}

- (void)configureForWaypoint:(id)a3 route:(id)a4 selectedVehicle:(id)a5 displayedInRoutePlanning:(BOOL)a6
{
  v6 = a6;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [objc_opt_class() _overviewTitleForWaypoint:v12 route:v11];
  [(UILabel *)self->_overviewLabel setText:v13];

  v15 = [objc_opt_class() _subtitleForWaypoint:v12 route:v11 selectedVehicle:v10 displayedInRoutePlanning:v6];

  v14 = [(UILabel *)self->_subtitleLabel attributedText];
  LOBYTE(v13) = [v14 isEqualToAttributedString:v15];

  [(UILabel *)self->_subtitleLabel setAttributedText:v15];
  [(DirectionsStartEndContentView *)self _setPinImageForWaypoint:v12];

  if ((v13 & 1) == 0)
  {
    [(DirectionsStartEndContentView *)self setNeedsLayout];
  }
}

- (double)_bottomPaddingUsingFont:(id)a3 metrics:(id *)a4
{
  v6 = a3;
  v7 = sub_10000FA08(self);
  var1 = a4->var1;
  if (v7 != 5)
  {
    [v6 descender];
    var1 = var1 - v9;
  }

  return var1;
}

- (double)_topPaddingUsingFont:(id)a3 metrics:(id *)a4
{
  v6 = a3;
  v7 = sub_10000FA08(self);
  var0 = a4->var0;
  if (v7 != 5)
  {
    [v6 ascender];
    var0 = var0 - v9;
  }

  return var0;
}

+ (id)_subtitleForWaypoint:(id)a3 route:(id)a4 selectedVehicle:(id)a5 displayedInRoutePlanning:(BOOL)a6
{
  v8 = a3;
  v9 = a4;
  if ([v9 _isChargingWaypoint:v8])
  {
    if (a5)
    {
      v10 = [v9 _isStartWaypoint:v8];
      v11 = [v9 steps];
      v12 = v11;
      if (v10)
      {
        v13 = [v11 firstObject];
        v14 = 0;
      }

      else
      {
        v13 = [v11 lastObject];
        v14 = 2;
      }

      v22 = [objc_opt_class() subtitleFontProvider];
      v23 = v22[2]();
      v20 = [v13 attributedChargeStringForWaypointType:v14 font:v23 textColor:0 includeDaysAgo:v10];
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
    v15 = [v8 singleLineAddress];
    if (v15)
    {
      v16 = [NSAttributedString alloc];
      v26 = NSFontAttributeName;
      v17 = [objc_opt_class() subtitleFontProvider];
      v18 = v17[2]();
      v27 = v18;
      v19 = [NSDictionary dictionaryWithObjects:&v27 forKeys:&v26 count:1];
      v20 = [v16 initWithString:v15 attributes:v19];
    }

    else
    {
      v20 = 0;
    }
  }

  return v20;
}

+ (id)_overviewTitleForWaypoint:(id)a3 route:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v6 _isStartWaypoint:v5];
  v8 = [v6 legs];

  if (!v7)
  {
    v12 = [v8 lastObject];
    v10 = [v12 destinationListInstructionString];

    if ([v10 length])
    {
      goto LABEL_10;
    }

    v13 = +[NSBundle mainBundle];
    v14 = v13;
    v15 = @"Arrive [Directions Step]";
    goto LABEL_8;
  }

  v9 = [v8 firstObject];
  v10 = [v9 originListInstructionString];

  if ([v10 length])
  {
    goto LABEL_10;
  }

  if (![v5 isDynamicCurrentLocation])
  {
    v13 = +[NSBundle mainBundle];
    v14 = v13;
    v15 = @"Start [Directions Step]";
LABEL_8:
    v11 = [v13 localizedStringForKey:v15 value:@"localized string not found" table:0];

    v10 = v14;
    goto LABEL_9;
  }

  v11 = MKLocalizedStringForCurrentLocation();
LABEL_9:

  v10 = v11;
LABEL_10:

  return v10;
}

+ (id)subtitleFontProvider
{
  v2 = +[UIDevice currentDevice];
  v3 = [v2 userInterfaceIdiom];

  if (v3 == 5)
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
  v3 = [v2 userInterfaceIdiom];

  if (v3 == 5)
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

+ ($8452678F12DBC466148836A9D382CAFC)cellMetricsForIdiom:(SEL)a3
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