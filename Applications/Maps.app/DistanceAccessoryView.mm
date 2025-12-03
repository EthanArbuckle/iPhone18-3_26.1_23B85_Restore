@interface DistanceAccessoryView
- (CGSize)intrinsicContentSize;
- (DistanceAccessoryView)initWithFrame:(CGRect)frame;
- (NSCharacterSet)customDecimalCharacterSet;
- (NSCharacterSet)customNonDecimalCharacterSet;
- (NSDictionary)digitTextAttributes;
- (NSDictionary)unitTextAttributes;
- (UIFontDescriptor)roundedFontDescriptor;
- (UIView)distanceLabel;
- (void)layoutSubviews;
- (void)setDisplayState:(int64_t)state;
- (void)setDistanceToNextManeuver:(double)maneuver;
@end

@implementation DistanceAccessoryView

- (UIView)distanceLabel
{
  WeakRetained = objc_loadWeakRetained(&self->_distanceLabel);

  return WeakRetained;
}

- (void)layoutSubviews
{
  distanceLabel = [(DistanceAccessoryView *)self distanceLabel];
  [distanceLabel intrinsicContentSize];
  v5 = v4;
  v7 = v6;

  distanceLabel2 = [(DistanceAccessoryView *)self distanceLabel];
  [distanceLabel2 setFrame:{0.0, 0.0, v5, v7}];

  activityView = [(DistanceAccessoryView *)self activityView];
  [activityView setFrame:{0.0, 0.0, 20.0, 20.0}];

  [(DistanceAccessoryView *)self invalidateIntrinsicContentSize];
}

- (CGSize)intrinsicContentSize
{
  width = 20.0;
  height = 20.0;
  if ([(DistanceAccessoryView *)self displayState]!= 3)
  {
    if ([(DistanceAccessoryView *)self displayState]== 2)
    {
      distanceLabel = [(DistanceAccessoryView *)self distanceLabel];
      [distanceLabel intrinsicContentSize];
      width = v6;
      height = v7;
    }

    else
    {
      width = CGSizeZero.width;
      height = CGSizeZero.height;
    }
  }

  v8 = width;
  v9 = height;
  result.height = v9;
  result.width = v8;
  return result;
}

- (NSDictionary)digitTextAttributes
{
  digitTextAttributes = self->_digitTextAttributes;
  if (!digitTextAttributes)
  {
    v23 = UIFontWeightTrait;
    v4 = [NSNumber numberWithDouble:UIFontWeightMedium];
    v24 = v4;
    v5 = [NSDictionary dictionaryWithObjects:&v24 forKeys:&v23 count:1];

    v21[0] = UIFontFeatureTypeIdentifierKey;
    v21[1] = UIFontFeatureSelectorIdentifierKey;
    v22[0] = &off_1016E72B0;
    v22[1] = &off_1016E72C8;
    v6 = [NSDictionary dictionaryWithObjects:v22 forKeys:v21 count:2];
    roundedFontDescriptor = [(DistanceAccessoryView *)self roundedFontDescriptor];
    v20[0] = v5;
    v19[0] = UIFontDescriptorTraitsAttribute;
    v19[1] = UIFontDescriptorFeatureSettingsAttribute;
    v18 = v6;
    v8 = [NSArray arrayWithObjects:&v18 count:1];
    v20[1] = v8;
    v9 = [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:2];
    v10 = [roundedFontDescriptor fontDescriptorByAddingAttributes:v9];

    v11 = [UIFont fontWithDescriptor:v10 size:15.0];
    v12 = [MapsTheme apertureKeyColor:NSFontAttributeName];
    v17[1] = v12;
    v13 = [NSDictionary dictionaryWithObjects:v17 forKeys:&v16 count:2];
    v14 = self->_digitTextAttributes;
    self->_digitTextAttributes = v13;

    digitTextAttributes = self->_digitTextAttributes;
  }

  return digitTextAttributes;
}

- (NSDictionary)unitTextAttributes
{
  unitTextAttributes = self->_unitTextAttributes;
  if (!unitTextAttributes)
  {
    v18 = UIFontWeightTrait;
    v4 = [NSNumber numberWithDouble:UIFontWeightBold];
    v19 = v4;
    v5 = [NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1];

    roundedFontDescriptor = [(DistanceAccessoryView *)self roundedFontDescriptor];
    v16 = UIFontDescriptorTraitsAttribute;
    v17 = v5;
    v7 = [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1];
    v8 = [roundedFontDescriptor fontDescriptorByAddingAttributes:v7];

    v9 = [UIFont fontWithDescriptor:v8 size:8.0];
    v15[0] = v9;
    v14[0] = NSFontAttributeName;
    v14[1] = NSForegroundColorAttributeName;
    v10 = +[MapsTheme apertureKeyColor];
    v14[2] = NSBaselineOffsetAttributeName;
    v15[1] = v10;
    v15[2] = &off_1016E72E0;
    v11 = [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:3];
    v12 = self->_unitTextAttributes;
    self->_unitTextAttributes = v11;

    unitTextAttributes = self->_unitTextAttributes;
  }

  return unitTextAttributes;
}

- (NSCharacterSet)customDecimalCharacterSet
{
  customDecimalCharacterSet = self->_customDecimalCharacterSet;
  if (!customDecimalCharacterSet)
  {
    customNonDecimalCharacterSet = [(DistanceAccessoryView *)self customNonDecimalCharacterSet];
    invertedSet = [customNonDecimalCharacterSet invertedSet];
    v6 = [invertedSet mutableCopy];

    [v6 addCharactersInString:@"."];
    v7 = [v6 copy];
    v8 = self->_customDecimalCharacterSet;
    self->_customDecimalCharacterSet = v7;

    customDecimalCharacterSet = self->_customDecimalCharacterSet;
  }

  return customDecimalCharacterSet;
}

- (NSCharacterSet)customNonDecimalCharacterSet
{
  customNonDecimalCharacterSet = self->_customNonDecimalCharacterSet;
  if (!customNonDecimalCharacterSet)
  {
    v4 = +[NSCharacterSet letterCharacterSet];
    v5 = [v4 mutableCopy];

    [v5 addCharactersInString:@" "];
    [v5 addCharactersInString:@"."];
    [v5 addCharactersInString:@"׳"];
    v6 = [v5 copy];
    v7 = self->_customNonDecimalCharacterSet;
    self->_customNonDecimalCharacterSet = v6;

    customNonDecimalCharacterSet = self->_customNonDecimalCharacterSet;
  }

  return customNonDecimalCharacterSet;
}

- (UIFontDescriptor)roundedFontDescriptor
{
  roundedFontDescriptor = self->_roundedFontDescriptor;
  if (!roundedFontDescriptor)
  {
    v4 = [UIFont preferredFontForTextStyle:UIFontTextStyleSubheadline];
    fontDescriptor = [v4 fontDescriptor];
    v6 = [fontDescriptor fontDescriptorWithDesign:UIFontDescriptorSystemDesignRounded];
    v7 = self->_roundedFontDescriptor;
    self->_roundedFontDescriptor = v6;

    roundedFontDescriptor = self->_roundedFontDescriptor;
  }

  return roundedFontDescriptor;
}

- (void)setDistanceToNextManeuver:(double)maneuver
{
  self->_distanceToNextManeuver = maneuver;
  v4 = [NSString _navigation_localizedStringForDistance:1 context:0 extraDetail:?];
  previousDistanceString = [(DistanceAccessoryView *)self previousDistanceString];
  v6 = [v4 isEqualToString:previousDistanceString];

  if ((v6 & 1) == 0)
  {
    [(DistanceAccessoryView *)self setPreviousDistanceString:v4];
    if (GEOConfigGetBOOL())
    {
      v7 = objc_alloc_init(NSMutableAttributedString);
      v8 = [NSScanner scannerWithString:v4];
      if (([v8 isAtEnd] & 1) == 0)
      {
        do
        {
          customDecimalCharacterSet = [(DistanceAccessoryView *)self customDecimalCharacterSet];
          v30 = &stru_1016631F0;
          [v8 scanCharactersFromSet:customDecimalCharacterSet intoString:&v30];
          v10 = v30;

          if ([(__CFString *)v10 length])
          {
            v11 = [NSAttributedString alloc];
            digitTextAttributes = [(DistanceAccessoryView *)self digitTextAttributes];
            v13 = [v11 initWithString:v10 attributes:digitTextAttributes];

            [v7 appendAttributedString:v13];
          }

          customNonDecimalCharacterSet = [(DistanceAccessoryView *)self customNonDecimalCharacterSet];
          v29 = &stru_1016631F0;
          [v8 scanCharactersFromSet:customNonDecimalCharacterSet intoString:&v29];
          v15 = v29;

          if ([(__CFString *)v15 length])
          {
            v16 = [NSAttributedString alloc];
            uppercaseString = [(__CFString *)v15 uppercaseString];
            unitTextAttributes = [(DistanceAccessoryView *)self unitTextAttributes];
            v19 = [v16 initWithString:uppercaseString attributes:unitTextAttributes];

            [v7 appendAttributedString:v19];
          }
        }

        while (![v8 isAtEnd]);
      }

      v20 = [v7 copy];
    }

    else
    {
      v21 = [NSAttributedString alloc];
      digitTextAttributes2 = [(DistanceAccessoryView *)self digitTextAttributes];
      v20 = [v21 initWithString:v4 attributes:digitTextAttributes2];
    }

    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_100840BC4;
    v27[3] = &unk_101661A90;
    v27[4] = self;
    v28 = v20;
    v23 = v20;
    v24 = objc_retainBlock(v27);
    [(DistanceAccessoryView *)self alpha];
    if (v25 == 0.0)
    {
      (v24[2])(v24);
    }

    else
    {
      systemApertureElementContext = [(DistanceAccessoryView *)self systemApertureElementContext];
      [systemApertureElementContext setElementNeedsUpdateWithCoordinatedAnimations:v24];
    }
  }
}

- (void)setDisplayState:(int64_t)state
{
  if (self->_displayState != state)
  {
    self->_displayState = state;
    v6 = state != 2;
    distanceLabel = [(DistanceAccessoryView *)self distanceLabel];
    [distanceLabel setHidden:v6];

    activityView = [(DistanceAccessoryView *)self activityView];
    [activityView setHidden:state != 3];

    activityView2 = [(DistanceAccessoryView *)self activityView];
    v10 = activityView2;
    if (state == 3)
    {
      [activityView2 startAnimating];
    }

    else
    {
      [activityView2 stopAnimating];
    }

    [(DistanceAccessoryView *)self setNeedsLayout];

    [(DistanceAccessoryView *)self invalidateIntrinsicContentSize];
  }
}

- (DistanceAccessoryView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v18.receiver = self;
  v18.super_class = DistanceAccessoryView;
  v7 = [(DistanceAccessoryView *)&v18 initWithFrame:?];
  if (v7)
  {
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    [(DistanceAccessoryView *)v7 setAccessibilityIdentifier:v9];

    v7->_displayState = 0;
    v10 = objc_alloc_init(_TtC4Maps31DistanceAccessoryLabelViewModel);
    labelViewModel = v7->_labelViewModel;
    v7->_labelViewModel = v10;

    labelView = [(DistanceAccessoryLabelViewModel *)v7->_labelViewModel labelView];
    objc_storeWeak(&v7->_distanceLabel, labelView);

    WeakRetained = objc_loadWeakRetained(&v7->_distanceLabel);
    [WeakRetained setAccessibilityIdentifier:@"DistanceLabel"];

    v14 = objc_loadWeakRetained(&v7->_distanceLabel);
    [(DistanceAccessoryView *)v7 addSubview:v14];

    v15 = [[UIActivityIndicatorView alloc] initWithFrame:{x, y, width, height}];
    activityView = v7->_activityView;
    v7->_activityView = v15;

    [(UIActivityIndicatorView *)v7->_activityView setAccessibilityIdentifier:@"ActivityView"];
    [(UIActivityIndicatorView *)v7->_activityView setHidden:1];
    [(DistanceAccessoryView *)v7 addSubview:v7->_activityView];
  }

  return v7;
}

@end