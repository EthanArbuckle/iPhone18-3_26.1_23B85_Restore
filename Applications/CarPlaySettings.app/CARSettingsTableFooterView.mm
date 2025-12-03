@interface CARSettingsTableFooterView
- (void)prepareForReuse;
- (void)setTextValue:(id)value;
- (void)updateConfigurationUsingState:(id)state;
@end

@implementation CARSettingsTableFooterView

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = CARSettingsTableFooterView;
  [(CARSettingsTableFooterView *)&v3 prepareForReuse];
  [(CARSettingsTableFooterView *)self setTextValue:&stru_1000DE3D8];
}

- (void)setTextValue:(id)value
{
  objc_storeStrong(&self->_textValue, value);

  [(CARSettingsTableFooterView *)self setNeedsUpdateConfiguration];
}

- (void)updateConfigurationUsingState:(id)state
{
  v12 = +[UIListContentConfiguration footerConfiguration];
  textValue = [(CARSettingsTableFooterView *)self textValue];
  [v12 setText:textValue];

  v5 = [UIFont preferredFontForTextStyle:UIFontTextStyleCaption1];
  textProperties = [v12 textProperties];
  [textProperties setFont:v5];

  v7 = +[UIColor secondaryLabelColor];
  textProperties2 = [v12 textProperties];
  [textProperties2 setColor:v7];

  nextSectionHasHeader = [(CARSettingsTableFooterView *)self nextSectionHasHeader];
  v10 = 0.0;
  if ((nextSectionHasHeader & 1) == 0)
  {
    if ([(CARSettingsTableFooterView *)self hasNextSection])
    {
      v10 = 4.0;
    }

    else
    {
      v10 = 0.0;
    }
  }

  [v12 setDirectionalLayoutMargins:{6.0, 12.0, v10, 8.0}];
  [(CARSettingsTableFooterView *)self setContentConfiguration:v12];
  v11 = +[UIBackgroundConfiguration clearConfiguration];
  [(CARSettingsTableFooterView *)self setBackgroundConfiguration:v11];
}

@end