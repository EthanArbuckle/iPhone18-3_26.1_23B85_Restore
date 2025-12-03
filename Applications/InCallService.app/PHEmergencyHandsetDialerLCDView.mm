@interface PHEmergencyHandsetDialerLCDView
- (PHEmergencyHandsetDialerLCDView)initWithFrame:(CGRect)frame forDialerType:(int)type appType:(int64_t)appType;
- (double)_emergencyDialerFontSize;
- (int64_t)numberOfLinesInEmergencyTitleLabel;
- (void)_applyLayoutConstraints;
- (void)_updateEmergencyLabel;
- (void)deleteCharacter;
- (void)setText:(id)text needsFormat:(BOOL)format;
- (void)setText:(id)text needsFormat:(BOOL)format name:(id)name label:(id)label;
@end

@implementation PHEmergencyHandsetDialerLCDView

- (PHEmergencyHandsetDialerLCDView)initWithFrame:(CGRect)frame forDialerType:(int)type appType:(int64_t)appType
{
  v21.receiver = self;
  v21.super_class = PHEmergencyHandsetDialerLCDView;
  v5 = [(PHEmergencyHandsetDialerLCDView *)&v21 initWithFrame:*&type forDialerType:appType appType:1 enableSmartDialer:0 enableSmartDialerExpandedSearch:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v5)
  {
    v6 = +[UIColor blackColor];
    numberTextField = [(PHEmergencyHandsetDialerLCDView *)v5 numberTextField];
    [numberTextField setTextColor:v6];

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
  emergencyTitleLabel = [(PHEmergencyHandsetDialerLCDView *)self emergencyTitleLabel];
  v22[1] = @"numberLabel";
  v23[0] = emergencyTitleLabel;
  numberTextField = [(PHEmergencyHandsetDialerLCDView *)self numberTextField];
  v23[1] = numberTextField;
  v5 = [NSDictionary dictionaryWithObjects:v23 forKeys:v22 count:2];

  v6 = [NSLayoutConstraint constraintsWithVisualFormat:@"|[emergencyLabel]|" options:0 metrics:0 views:v5];
  [(PHEmergencyHandsetDialerLCDView *)self addConstraints:v6];

  v7 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"|-[numberLabel]-|", 0x10000, 0, v5);
  [(PHEmergencyHandsetDialerLCDView *)self addConstraints:v7];

  emergencyTitleLabel2 = [(PHEmergencyHandsetDialerLCDView *)self emergencyTitleLabel];
  [PHUIConfiguration yOffsetForDialerLCDView:2];
  v10 = [NSLayoutConstraint constraintWithItem:emergencyTitleLabel2 attribute:11 relatedBy:0 toItem:self attribute:3 multiplier:1.0 constant:v9];
  [(PHEmergencyHandsetDialerLCDView *)self addConstraint:v10];

  emergencyTitleLabel3 = [(PHEmergencyHandsetDialerLCDView *)self emergencyTitleLabel];
  v12 = [NSLayoutConstraint constraintWithItem:self attribute:4 relatedBy:0 toItem:emergencyTitleLabel3 attribute:11 multiplier:1.0 constant:0.0];
  [(PHEmergencyHandsetDialerLCDView *)self addConstraint:v12];

  emergencyTitleLabel4 = [(PHEmergencyHandsetDialerLCDView *)self emergencyTitleLabel];
  v14 = [NSLayoutConstraint constraintWithItem:emergencyTitleLabel4 attribute:9 relatedBy:0 toItem:self attribute:9 multiplier:1.0 constant:0.0];
  [(PHEmergencyHandsetDialerLCDView *)self addConstraint:v14];

  emergencyTitleLabel5 = [(PHEmergencyHandsetDialerLCDView *)self emergencyTitleLabel];
  numberTextField2 = [(PHEmergencyHandsetDialerLCDView *)self numberTextField];
  [(PHEmergencyHandsetDialerLCDView *)self spacingBetweenNumberBaselineAndNameBaseline];
  v18 = [NSLayoutConstraint constraintWithItem:emergencyTitleLabel5 attribute:11 relatedBy:0 toItem:numberTextField2 attribute:11 multiplier:1.0 constant:v17];
  [(PHEmergencyHandsetDialerLCDView *)self addConstraint:v18];

  emergencyTitleLabel6 = [(PHEmergencyHandsetDialerLCDView *)self emergencyTitleLabel];
  numberTextField3 = [(PHEmergencyHandsetDialerLCDView *)self numberTextField];
  v21 = [NSLayoutConstraint constraintWithItem:emergencyTitleLabel6 attribute:9 relatedBy:0 toItem:numberTextField3 attribute:9 multiplier:1.0 constant:0.0];
  [(PHEmergencyHandsetDialerLCDView *)self addConstraint:v21];
}

- (void)_updateEmergencyLabel
{
  if (![(PHEmergencyHandsetDialerLCDView *)self shrinkLabelWhenNumbersEntered])
  {
    return;
  }

  numberTextField = [(PHEmergencyHandsetDialerLCDView *)self numberTextField];
  text = [numberTextField text];
  if ([text length])
  {
    font = [(PHTextCycleLabel *)self->_emergencyTitleLabel font];
    [font pointSize];
    v7 = v6;
    [(PHEmergencyHandsetDialerLCDView *)self _emergencyDialerFontSize];
    v9 = v8;

    if (v7 == v9)
    {
      v10 = [UIFont systemFontOfSize:11.0];
      emergencyTitleLabel = self->_emergencyTitleLabel;
LABEL_10:
      numberTextField2 = v10;
      [(PHTextCycleLabel *)emergencyTitleLabel setFont:?];
      goto LABEL_11;
    }
  }

  else
  {
  }

  numberTextField2 = [(PHEmergencyHandsetDialerLCDView *)self numberTextField];
  text2 = [numberTextField2 text];
  if (![text2 length])
  {
    font2 = [(PHTextCycleLabel *)self->_emergencyTitleLabel font];
    [font2 pointSize];
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

- (void)setText:(id)text needsFormat:(BOOL)format name:(id)name label:(id)label
{
  v7.receiver = self;
  v7.super_class = PHEmergencyHandsetDialerLCDView;
  [(PHEmergencyHandsetDialerLCDView *)&v7 setText:text needsFormat:format name:name label:label];
  [(PHEmergencyHandsetDialerLCDView *)self _updateEmergencyLabel];
}

- (void)setText:(id)text needsFormat:(BOOL)format
{
  v5.receiver = self;
  v5.super_class = PHEmergencyHandsetDialerLCDView;
  [(PHEmergencyHandsetDialerLCDView *)&v5 setText:text needsFormat:format];
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
  font = [(PHTextCycleLabel *)self->_emergencyTitleLabel font];
  [font lineHeight];
  v7 = v6;

  text = [(PHTextCycleLabel *)self->_emergencyTitleLabel text];
  v14 = NSFontAttributeName;
  font2 = [(PHTextCycleLabel *)self->_emergencyTitleLabel font];
  v15 = font2;
  v10 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
  [text boundingRectWithSize:1 options:v10 attributes:0 context:{v4, 1.79769313e308}];
  v12 = v11;

  return (v12 / v7);
}

@end