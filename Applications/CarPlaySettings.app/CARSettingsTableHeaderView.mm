@interface CARSettingsTableHeaderView
- (void)prepareForReuse;
- (void)setTextValue:(id)value;
- (void)updateConfigurationUsingState:(id)state;
@end

@implementation CARSettingsTableHeaderView

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = CARSettingsTableHeaderView;
  [(CARSettingsTableHeaderView *)&v3 prepareForReuse];
  [(CARSettingsTableHeaderView *)self setTextValue:&stru_1000DE3D8];
}

- (void)setTextValue:(id)value
{
  v4 = [value copy];
  textValue = self->_textValue;
  self->_textValue = v4;

  [(CARSettingsTableHeaderView *)self setNeedsUpdateConfiguration];
}

- (void)updateConfigurationUsingState:(id)state
{
  v10 = +[UIListContentConfiguration headerConfiguration];
  textValue = [(CARSettingsTableHeaderView *)self textValue];
  [v10 setText:textValue];

  v5 = [UIFont _preferredFontForTextStyle:UIFontTextStyleCallout weight:UIFontWeightSemibold];
  textProperties = [v10 textProperties];
  [textProperties setFont:v5];

  if ([(CARSettingsTableHeaderView *)self previousSectionHasFooter])
  {
    v7 = 16.0;
  }

  else
  {
    hasPreviousSection = [(CARSettingsTableHeaderView *)self hasPreviousSection];
    v7 = 16.0;
    if (!hasPreviousSection)
    {
      v7 = 0.0;
    }
  }

  [v10 setDirectionalLayoutMargins:{v7, 12.0, 6.0, 0.0}];
  [(CARSettingsTableHeaderView *)self setContentConfiguration:v10];
  v9 = +[UIBackgroundConfiguration clearConfiguration];
  [(CARSettingsTableHeaderView *)self setBackgroundConfiguration:v9];
}

@end