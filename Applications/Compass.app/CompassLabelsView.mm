@interface CompassLabelsView
- (CompassLabelsView)initWithFrame:(CGRect)frame;
- (id)bearingLabel;
- (id)degreeLabels;
- (id)directionLabels;
- (void)layoutSubviews;
- (void)setCompassHeading:(double)heading;
- (void)updateLabelsAnimated:(BOOL)animated;
@end

@implementation CompassLabelsView

- (void)layoutSubviews
{
  v54.receiver = self;
  v54.super_class = CompassLabelsView;
  [(CompassLabelsView *)&v54 layoutSubviews];
  [(CompassLabelsView *)self bounds];
  MidX = CGRectGetMidX(v56);
  [(CompassLabelsView *)self bounds];
  MidY = CGRectGetMidY(v57);
  if (self->_bearing != 1.79769313e308)
  {
    bearingLabel = [(CompassLabelsView *)self bearingLabel];
    [(CompassLabelsView *)self compassHeading];
    v7 = fmod(v6 + self->_bearing + 270.0, 360.0);
    bearingLabelRadius = self->_bearingLabelRadius;
    v9 = __sincos_stret(v7 * 3.14159265 / 180.0);
    [bearingLabel setCenter:{MidX + bearingLabelRadius * v9.__cosval, MidY + bearingLabelRadius * v9.__sinval}];
  }

  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  degreeLabels = [(CompassLabelsView *)self degreeLabels];
  v11 = [degreeLabels countByEnumeratingWithState:&v50 objects:v55 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v51;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v51 != v13)
        {
          objc_enumerationMutation(degreeLabels);
        }

        v15 = *(*(&v50 + 1) + 8 * i);
        text = [v15 text];
        intValue = [text intValue];

        [(CompassLabelsView *)self compassHeading];
        v19 = fmod(v18 + intValue + 270.0, 360.0);
        degreesRadius = self->_degreesRadius;
        v21 = __sincos_stret(v19 * 3.14159265 / 180.0);
        [v15 setCenter:{MidX + degreesRadius * v21.__cosval, MidY + degreesRadius * v21.__sinval}];
      }

      v12 = [degreeLabels countByEnumeratingWithState:&v50 objects:v55 count:16];
    }

    while (v12);
  }

  [(CompassLabelsView *)self compassHeading];
  v23 = fmod(v22 + 0.0 + 270.0, 360.0);
  directionLabelRadius = self->_directionLabelRadius;
  v25 = __sincos_stret(v23 * 3.14159265 / 180.0);
  directionLabels = [(CompassLabelsView *)self directionLabels];
  v27 = WebLocalizedString();
  v28 = [directionLabels objectForKeyedSubscript:v27];

  [v28 setCenter:{MidX + directionLabelRadius * v25.__cosval, MidY + directionLabelRadius * v25.__sinval}];
  [(CompassLabelsView *)self compassHeading];
  v30 = fmod(v29 + 90.0 + 270.0, 360.0);
  v31 = self->_directionLabelRadius;
  v32 = __sincos_stret(v30 * 3.14159265 / 180.0);
  directionLabels2 = [(CompassLabelsView *)self directionLabels];
  v34 = WebLocalizedString();
  v35 = [directionLabels2 objectForKeyedSubscript:v34];

  [v35 setCenter:{MidX + v31 * v32.__cosval, MidY + v31 * v32.__sinval}];
  [(CompassLabelsView *)self compassHeading];
  v37 = fmod(v36 + 180.0 + 270.0, 360.0);
  v38 = self->_directionLabelRadius;
  v39 = __sincos_stret(v37 * 3.14159265 / 180.0);
  directionLabels3 = [(CompassLabelsView *)self directionLabels];
  v41 = WebLocalizedString();
  v42 = [directionLabels3 objectForKeyedSubscript:v41];

  [v42 setCenter:{MidX + v38 * v39.__cosval, MidY + v38 * v39.__sinval}];
  [(CompassLabelsView *)self compassHeading];
  v44 = fmod(v43 + 270.0 + 270.0, 360.0);
  v45 = self->_directionLabelRadius;
  v46 = __sincos_stret(v44 * 3.14159265 / 180.0);
  directionLabels4 = [(CompassLabelsView *)self directionLabels];
  v48 = WebLocalizedString();
  v49 = [directionLabels4 objectForKeyedSubscript:v48];

  [v49 setCenter:{MidX + v45 * v46.__cosval, MidY + v45 * v46.__sinval}];
}

- (id)degreeLabels
{
  selfCopy = self;
  degreeLabels = self->_degreeLabels;
  if (!degreeLabels)
  {
    v4 = [NSMutableArray arrayWithCapacity:12];
    v5 = &CTFontCreateCopyOfSystemUIFontWithGrade_ptr;
    v6 = 0;
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
    do
    {
      v10 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
      v11 = +[UIColor whiteColor];
      [v10 setTextColor:v11];

      [v10 setTextAlignment:1];
      v12 = [UIFont preferredFontForTextStyle:UIFontTextStyleCaption2];
      [v12 pointSize];
      v14 = v13;

      v15 = fmin(fmax(v14, 12.0), 30.0);
      v16 = +[UIScreen mainScreen];
      [v16 bounds];
      v35 = [UIFont systemFontOfSize:round(v15 * v17 / 320.0)];

      fontDescriptor = [v35 fontDescriptor];
      v39 = UIFontDescriptorFeatureSettingsAttribute;
      v36[0] = UIFontFeatureTypeIdentifierKey;
      v36[1] = UIFontFeatureSelectorIdentifierKey;
      v37[0] = &off_100014B88;
      v37[1] = &off_100014BA0;
      v19 = [NSDictionary dictionaryWithObjects:v37 forKeys:v36 count:2];
      v38 = v19;
      v20 = [v5[119] arrayWithObjects:&v38 count:1];
      v40 = v20;
      [NSDictionary dictionaryWithObjects:&v40 forKeys:&v39 count:1];
      v21 = v5;
      v22 = selfCopy;
      v24 = v23 = v4;
      v25 = [fontDescriptor fontDescriptorByAddingAttributes:v24];

      v26 = +[UIScreen mainScreen];
      [v26 bounds];
      v28 = [UIFont fontWithDescriptor:v25 size:round(v15 * v27 / 320.0)];
      [v10 setFont:v28];

      v29 = [NSNumber numberWithInt:v6];
      v30 = [NSNumberFormatter localizedStringFromNumber:v29 numberStyle:0];
      [v10 setText:v30];

      v31 = +[UIColor clearColor];
      [v10 setBackgroundColor:v31];

      v4 = v23;
      selfCopy = v22;
      v5 = v21;
      [v10 sizeToFit];
      [v4 addObject:v10];
      [(CompassLabelsView *)selfCopy addSubview:v10];

      v6 += 30;
    }

    while (v6 < 0x168);
    v32 = [objc_alloc(v21[119]) initWithArray:v4];
    v33 = selfCopy->_degreeLabels;
    selfCopy->_degreeLabels = v32;

    degreeLabels = selfCopy->_degreeLabels;
  }

  return degreeLabels;
}

- (id)directionLabels
{
  directionLabels = self->_directionLabels;
  if (!directionLabels)
  {
    v28 = 16;
    v4 = WebLocalizedString();
    v37[0] = v4;
    v5 = WebLocalizedString();
    v37[1] = v5;
    v6 = WebLocalizedString();
    v37[2] = v6;
    v7 = WebLocalizedString();
    v37[3] = v7;
    v8 = [NSArray arrayWithObjects:v37 count:4];

    v31 = [NSMutableDictionary dictionaryWithCapacity:4];
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    obj = v8;
    v9 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
    if (v9)
    {
      v10 = v9;
      v30 = *v33;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v33 != v30)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v32 + 1) + 8 * i);
          v13 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody, v28];
          [v13 pointSize];
          v15 = v14;

          v16 = fmin(fmax(v15, 21.0), 30.0);
          v17 = [[UILabel alloc] initWithFrame:{0.0, 0.0, 30.0, 30.0}];
          v18 = +[UIColor whiteColor];
          [v17 setTextColor:v18];

          [v17 setTextAlignment:1];
          v19 = +[UIScreen mainScreen];
          [v19 bounds];
          v21 = v20;
          v38 = xmmword_10000C3D8;
          v39 = -798153473;
          if (MGIsDeviceOfType())
          {
            v22 = 0.850000024;
          }

          else
          {
            v22 = 1.0;
          }

          v23 = [UIFont systemFontOfSize:v22 * round(v16 * v21 / 320.0)];
          [v17 setFont:v23];

          [v17 setText:v12];
          v24 = +[UIColor clearColor];
          [v17 setBackgroundColor:v24];

          [v17 setAdjustsFontSizeToFitWidth:1];
          [v17 sizeToFit];
          [v31 setObject:v17 forKey:v12];
          [(CompassLabelsView *)self addSubview:v17];
        }

        v10 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
      }

      while (v10);
    }

    v25 = [[NSDictionary alloc] initWithDictionary:v31];
    v26 = *&self->CompassRotatingView_opaque[v28];
    *&self->CompassRotatingView_opaque[v28] = v25;

    directionLabels = *&self->CompassRotatingView_opaque[v28];
  }

  return directionLabels;
}

- (CompassLabelsView)initWithFrame:(CGRect)frame
{
  v4.receiver = self;
  v4.super_class = CompassLabelsView;
  result = [(CompassLabelsView *)&v4 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (result)
  {
    result->_bearing = 1.79769313e308;
  }

  return result;
}

- (void)updateLabelsAnimated:(BOOL)animated
{
  animatedCopy = animated;
  bearing = self->_bearing;
  bearingLabel = [(CompassLabelsView *)self bearingLabel];
  [bearingLabel alpha];
  v8 = v7;

  if ((bearing != 1.79769313e308) == (v8 == 0.0))
  {
    if (bearing == 1.79769313e308)
    {
      v9 = 1.0;
    }

    else
    {
      v9 = 0.0;
    }

    bearingLabel2 = [(CompassLabelsView *)self bearingLabel];
    [bearingLabel2 setAlpha:v9];

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    degreeLabels = [(CompassLabelsView *)self degreeLabels];
    v12 = [degreeLabels countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v12)
    {
      v13 = *v23;
      if (bearing == 1.79769313e308)
      {
        v14 = 0.699999988;
      }

      else
      {
        v14 = 1.0;
      }

      do
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v23 != v13)
          {
            objc_enumerationMutation(degreeLabels);
          }

          [*(*(&v22 + 1) + 8 * i) setAlpha:v14];
        }

        v12 = [degreeLabels countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v12);
    }

    objc_initWeak(&location, self);
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100008820;
    v18[3] = &unk_100014588;
    objc_copyWeak(&v19, &location);
    v20 = bearing != 1.79769313e308;
    v16 = objc_retainBlock(v18);
    v17 = v16;
    if (animatedCopy)
    {
      [UIView animateWithDuration:v16 animations:0.200000003];
    }

    else
    {
      (v16[2])(v16);
    }

    objc_destroyWeak(&v19);
    objc_destroyWeak(&location);
  }
}

- (id)bearingLabel
{
  bearingLabel = self->_bearingLabel;
  if (!bearingLabel)
  {
    v4 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
    [v4 pointSize];
    v6 = v5;

    v7 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    v8 = +[UIColor whiteColor];
    [(UILabel *)v7 setTextColor:v8];

    [(UILabel *)v7 setTextAlignment:1];
    v9 = +[UIScreen mainScreen];
    [v9 bounds];
    v11 = [UIFont boldSystemFontOfSize:round(fmin(fmax(v6, 16.0), 30.0) * v10 / 320.0)];
    [(UILabel *)v7 setFont:v11];

    [(UILabel *)v7 setAlpha:0.0];
    [(CompassLabelsView *)self addSubview:v7];
    v12 = self->_bearingLabel;
    self->_bearingLabel = v7;

    bearingLabel = self->_bearingLabel;
  }

  return bearingLabel;
}

- (void)setCompassHeading:(double)heading
{
  v4.receiver = self;
  v4.super_class = CompassLabelsView;
  [(CompassLabelsView *)&v4 setCompassHeading:heading];
  [(CompassLabelsView *)self setNeedsLayout];
}

@end