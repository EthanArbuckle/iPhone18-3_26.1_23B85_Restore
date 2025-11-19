@interface CARSettingsTableFooterView
- (void)prepareForReuse;
- (void)setTextValue:(id)a3;
- (void)updateConfigurationUsingState:(id)a3;
@end

@implementation CARSettingsTableFooterView

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = CARSettingsTableFooterView;
  [(CARSettingsTableFooterView *)&v3 prepareForReuse];
  [(CARSettingsTableFooterView *)self setTextValue:&stru_1000DE3D8];
}

- (void)setTextValue:(id)a3
{
  objc_storeStrong(&self->_textValue, a3);

  [(CARSettingsTableFooterView *)self setNeedsUpdateConfiguration];
}

- (void)updateConfigurationUsingState:(id)a3
{
  v12 = +[UIListContentConfiguration footerConfiguration];
  v4 = [(CARSettingsTableFooterView *)self textValue];
  [v12 setText:v4];

  v5 = [UIFont preferredFontForTextStyle:UIFontTextStyleCaption1];
  v6 = [v12 textProperties];
  [v6 setFont:v5];

  v7 = +[UIColor secondaryLabelColor];
  v8 = [v12 textProperties];
  [v8 setColor:v7];

  v9 = [(CARSettingsTableFooterView *)self nextSectionHasHeader];
  v10 = 0.0;
  if ((v9 & 1) == 0)
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