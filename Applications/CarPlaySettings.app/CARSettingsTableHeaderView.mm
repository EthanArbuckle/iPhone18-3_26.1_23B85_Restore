@interface CARSettingsTableHeaderView
- (void)prepareForReuse;
- (void)setTextValue:(id)a3;
- (void)updateConfigurationUsingState:(id)a3;
@end

@implementation CARSettingsTableHeaderView

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = CARSettingsTableHeaderView;
  [(CARSettingsTableHeaderView *)&v3 prepareForReuse];
  [(CARSettingsTableHeaderView *)self setTextValue:&stru_1000DE3D8];
}

- (void)setTextValue:(id)a3
{
  v4 = [a3 copy];
  textValue = self->_textValue;
  self->_textValue = v4;

  [(CARSettingsTableHeaderView *)self setNeedsUpdateConfiguration];
}

- (void)updateConfigurationUsingState:(id)a3
{
  v10 = +[UIListContentConfiguration headerConfiguration];
  v4 = [(CARSettingsTableHeaderView *)self textValue];
  [v10 setText:v4];

  v5 = [UIFont _preferredFontForTextStyle:UIFontTextStyleCallout weight:UIFontWeightSemibold];
  v6 = [v10 textProperties];
  [v6 setFont:v5];

  if ([(CARSettingsTableHeaderView *)self previousSectionHasFooter])
  {
    v7 = 16.0;
  }

  else
  {
    v8 = [(CARSettingsTableHeaderView *)self hasPreviousSection];
    v7 = 16.0;
    if (!v8)
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