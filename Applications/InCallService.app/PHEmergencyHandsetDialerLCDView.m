@interface PHEmergencyHandsetDialerLCDView
- (PHEmergencyHandsetDialerLCDView)initWithFrame:(CGRect)a3 forDialerType:(int)a4 appType:(int64_t)a5;
- (double)_emergencyDialerFontSize;
- (int64_t)numberOfLinesInEmergencyTitleLabel;
- (void)_applyLayoutConstraints;
- (void)_updateEmergencyLabel;
- (void)deleteCharacter;
- (void)setText:(id)a3 needsFormat:(BOOL)a4;
- (void)setText:(id)a3 needsFormat:(BOOL)a4 name:(id)a5 label:(id)a6;
@end

@implementation PHEmergencyHandsetDialerLCDView

- (PHEmergencyHandsetDialerLCDView)initWithFrame:(CGRect)a3 forDialerType:(int)a4 appType:(int64_t)a5
{
  v21.receiver = self;
  v21.super_class = PHEmergencyHandsetDialerLCDView;
  v5 = [(PHEmergencyHandsetDialerLCDView *)&v21 initWithFrame:*&a4 forDialerType:a5 appType:1 enableSmartDialer:0 enableSmartDialerExpandedSearch:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v5)
  {
    v6 = +[UIColor blackColor];
    v7 = [(PHEmergencyHandsetDialerLCDView *)v5 numberTextField];
    [v7 setTextColor:v6];

    v8 = +[NSBundle mainBundle];
    v9 = [v8 localizedStringForKey:@"EMERGENCY_CALL_STRINGS" value:&stru_100361FD0 table:@"EmergencyCallStrings"];
    v10 = [v9 componentsSeparatedByString:{@", "}];

    v11 = +[NSBundle mainBundle];
    v12 = [v11 localizedStringForKey:@"EMERGENCY_CALL" value:&stru_100361FD0 table:@"EmergencyCallStrings"];

    if (v12 && ([v10 containsObject:v12] & 1) == 0)
    {
      v13 = [NSMutableArray arrayWithArray:v10];
      [v13 insertObject:v12 atIndex:0];
      v14 = [NSArray arrayWithArray:v13];

      v10 = v14;
    }

    v15 = objc_alloc_init(PHTextCycleLabel);
    emergencyTitleLabel = v5->_emergencyTitleLabel;
    v5->_emergencyTitleLabel = v15;

    [(PHEmergencyHandsetDialerLCDView *)v5 _emergencyDialerFontSize];
    v17 = [UIFont systemFontOfSize:?];
    [(PHTextCycleLabel *)v5->_emergencyTitleLabel setFont:v17];

    [(PHTextCycleLabel *)v5->_emergencyTitleLabel setTextAlignment:1];
    v18 = +[UIColor systemRedColor];
    [(PHTextCycleLabel *)v5->_emergencyTitleLabel setTextColor:v18];

    v19 = +[UIColor clearColor];
    [(PHTextCycleLabel *)v5->_emergencyTitleLabel setBackgroundColor:v19];

    [(PHTextCycleLabel *)v5->_emergencyTitleLabel setOpaque:0];
    [(PHTextCycleLabel *)v5->_emergencyTitleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(PHTextCycleLabel *)v5->_emergencyTitleLabel setCycleStrings:v10];
    [(PHTextCycleLabel *)v5->_emergencyTitleLabel startCyclingStrings];
    [(PHEmergencyHandsetDialerLCDView *)v5 addSubview:v5->_emergencyTitleLabel];
    [(PHEmergencyHandsetDialerLCDView *)v5 _applyLayoutConstraints];
    [(PHEmergencyHandsetDialerLCDView *)v5 setClipsToBounds:0];
  }

  return v5;
}

- (void)_applyLayoutConstraints
{
  v22[0] = @"emergencyLabel";
  v3 = [(PHEmergencyHandsetDialerLCDView *)self emergencyTitleLabel];
  v22[1] = @"numberLabel";
  v23[0] = v3;
  v4 = [(PHEmergencyHandsetDialerLCDView *)self numberTextField];
  v23[1] = v4;
  v5 = [NSDictionary dictionaryWithObjects:v23 forKeys:v22 count:2];

  v6 = [NSLayoutConstraint constraintsWithVisualFormat:@"|[emergencyLabel]|" options:0 metrics:0 views:v5];
  [(PHEmergencyHandsetDialerLCDView *)self addConstraints:v6];

  v7 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"|-[numberLabel]-|", 0x10000, 0, v5);
  [(PHEmergencyHandsetDialerLCDView *)self addConstraints:v7];

  v8 = [(PHEmergencyHandsetDialerLCDView *)self emergencyTitleLabel];
  [PHUIConfiguration yOffsetForDialerLCDView:2];
  v10 = [NSLayoutConstraint constraintWithItem:v8 attribute:11 relatedBy:0 toItem:self attribute:3 multiplier:1.0 constant:v9];
  [(PHEmergencyHandsetDialerLCDView *)self addConstraint:v10];

  v11 = [(PHEmergencyHandsetDialerLCDView *)self emergencyTitleLabel];
  v12 = [NSLayoutConstraint constraintWithItem:self attribute:4 relatedBy:0 toItem:v11 attribute:11 multiplier:1.0 constant:0.0];
  [(PHEmergencyHandsetDialerLCDView *)self addConstraint:v12];

  v13 = [(PHEmergencyHandsetDialerLCDView *)self emergencyTitleLabel];
  v14 = [NSLayoutConstraint constraintWithItem:v13 attribute:9 relatedBy:0 toItem:self attribute:9 multiplier:1.0 constant:0.0];
  [(PHEmergencyHandsetDialerLCDView *)self addConstraint:v14];

  v15 = [(PHEmergencyHandsetDialerLCDView *)self emergencyTitleLabel];
  v16 = [(PHEmergencyHandsetDialerLCDView *)self numberTextField];
  [(PHEmergencyHandsetDialerLCDView *)self spacingBetweenNumberBaselineAndNameBaseline];
  v18 = [NSLayoutConstraint constraintWithItem:v15 attribute:11 relatedBy:0 toItem:v16 attribute:11 multiplier:1.0 constant:v17];
  [(PHEmergencyHandsetDialerLCDView *)self addConstraint:v18];

  v19 = [(PHEmergencyHandsetDialerLCDView *)self emergencyTitleLabel];
  v20 = [(PHEmergencyHandsetDialerLCDView *)self numberTextField];
  v21 = [NSLayoutConstraint constraintWithItem:v19 attribute:9 relatedBy:0 toItem:v20 attribute:9 multiplier:1.0 constant:0.0];
  [(PHEmergencyHandsetDialerLCDView *)self addConstraint:v21];
}

- (void)_updateEmergencyLabel
{
  if (![(PHEmergencyHandsetDialerLCDView *)self shrinkLabelWhenNumbersEntered])
  {
    return;
  }

  v3 = [(PHEmergencyHandsetDialerLCDView *)self numberTextField];
  v4 = [v3 text];
  if ([v4 length])
  {
    v5 = [(PHTextCycleLabel *)self->_emergencyTitleLabel font];
    [v5 pointSize];
    v7 = v6;
    [(PHEmergencyHandsetDialerLCDView *)self _emergencyDialerFontSize];
    v9 = v8;

    if (v7 == v9)
    {
      v10 = [UIFont systemFontOfSize:11.0];
      emergencyTitleLabel = self->_emergencyTitleLabel;
LABEL_10:
      v16 = v10;
      [(PHTextCycleLabel *)emergencyTitleLabel setFont:?];
      goto LABEL_11;
    }
  }

  else
  {
  }

  v16 = [(PHEmergencyHandsetDialerLCDView *)self numberTextField];
  v12 = [v16 text];
  if (![v12 length])
  {
    v13 = [(PHTextCycleLabel *)self->_emergencyTitleLabel font];
    [v13 pointSize];
    v15 = v14;

    if (v15 != 11.0)
    {
      return;
    }

    [(PHEmergencyHandsetDialerLCDView *)self _emergencyDialerFontSize];
    v10 = [UIFont systemFontOfSize:?];
    emergencyTitleLabel = self->_emergencyTitleLabel;
    goto LABEL_10;
  }

LABEL_11:
}

- (void)setText:(id)a3 needsFormat:(BOOL)a4 name:(id)a5 label:(id)a6
{
  v7.receiver = self;
  v7.super_class = PHEmergencyHandsetDialerLCDView;
  [(PHEmergencyHandsetDialerLCDView *)&v7 setText:a3 needsFormat:a4 name:a5 label:a6];
  [(PHEmergencyHandsetDialerLCDView *)self _updateEmergencyLabel];
}

- (void)setText:(id)a3 needsFormat:(BOOL)a4
{
  v5.receiver = self;
  v5.super_class = PHEmergencyHandsetDialerLCDView;
  [(PHEmergencyHandsetDialerLCDView *)&v5 setText:a3 needsFormat:a4];
  [(PHEmergencyHandsetDialerLCDView *)self _updateEmergencyLabel];
}

- (void)deleteCharacter
{
  v3.receiver = self;
  v3.super_class = PHEmergencyHandsetDialerLCDView;
  [(PHEmergencyHandsetDialerLCDView *)&v3 deleteCharacter];
  [(PHEmergencyHandsetDialerLCDView *)self _updateEmergencyLabel];
}

- (double)_emergencyDialerFontSize
{
  v2 = +[PHUIConfiguration handsetDialerSize];
  result = 17.0;
  if ((v2 - 1) <= 3)
  {
    return dbl_1002F9310[(v2 - 1)];
  }

  return result;
}

- (int64_t)numberOfLinesInEmergencyTitleLabel
{
  [(PHTextCycleLabel *)self->_emergencyTitleLabel frame];
  v4 = v3;
  v5 = [(PHTextCycleLabel *)self->_emergencyTitleLabel font];
  [v5 lineHeight];
  v7 = v6;

  v8 = [(PHTextCycleLabel *)self->_emergencyTitleLabel text];
  v14 = NSFontAttributeName;
  v9 = [(PHTextCycleLabel *)self->_emergencyTitleLabel font];
  v15 = v9;
  v10 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
  [v8 boundingRectWithSize:1 options:v10 attributes:0 context:{v4, 1.79769313e308}];
  v12 = v11;

  return (v12 / v7);
}

@end